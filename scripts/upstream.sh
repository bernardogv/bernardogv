#!/usr/bin/env bash
# Rewrites the block between the upstream markers in README.md with live PR counts.
# Same rules as bernardogv.com: PRs to other people's repos, merged or open (closed-unmerged dropped).
set -euo pipefail

prs=$(gh api -X GET search/issues -f q='type:pr author:bernardogv -user:bernardogv' -f per_page=100 --jq '
  [.items[]
   | {repo: (.repository_url | sub("https://api.github.com/repos/"; "")),
      title, url: .html_url,
      merged: (.pull_request.merged_at != null), open: (.state == "open")}
   | select(.merged or .open)]')

block=$(jq -r '
  (group_by(.repo) | map({repo: .[0].repo,
                          merged: map(select(.merged)) | length,
                          open: map(select(.open)) | length,
                          lead: (map(select(.merged)) + .)[0]})
   | sort_by(-.merged, -.open)) as $repos
  | "**\(length) pull requests to \($repos | length) open-source repos, \(map(select(.merged)) | length) merged.**",
    "",
    "| Project | Merged | Open | Latest |",
    "|---|---:|---:|---|",
    ($repos[] | "| [\(.repo)](https://github.com/\(.repo)) | \(.merged) | \(.open) | [\(.lead.title | gsub("\\|"; "\\\\|"))](\(.lead.url)) |")
' <<<"$prs")

BLOCK="$block" awk '
  /<!-- upstream:start -->/ { print; print ENVIRON["BLOCK"]; skip = 1; next }
  /<!-- upstream:end -->/   { skip = 0 }
  !skip
' README.md > README.md.tmp
mv README.md.tmp README.md
