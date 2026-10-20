### Bernardo Gallegos Vallejo

MTS Product Application Engineer at AMD, validating AI infrastructure. On my own time: upstream fixes to GPU stacks, Rust and inference tooling, and a GPU homelab run by agents.

**[bernardogv.com](https://bernardogv.com)** · [LinkedIn](https://www.linkedin.com/in/bernardo-gallegos-vallejo-431a24283/) · [X](https://x.com/BernardoGV_)

#### Upstream

<!-- upstream:start -->
**23 pull requests to 10 open-source repos, 9 merged.**

| Project | Merged | Open | Latest |
|---|---:|---:|---|
| [llamastash/llamastash](https://github.com/llamastash/llamastash) | 4 | 0 | [fix(unit5): the vLLM UMA guard launches beside a tenant and reserves for the engine's own overhead](https://github.com/llamastash/llamastash/pull/81) |
| [lemonade-sdk/lemonade](https://github.com/lemonade-sdk/lemonade) | 2 | 1 | [docs: extra_models_dir under /home needs a drop-in on deb/rpm](https://github.com/lemonade-sdk/lemonade/pull/3895) |
| [mostlygeek/llama-swap](https://github.com/mostlygeek/llama-swap) | 2 | 0 | [config: accept video as an input and output modality](https://github.com/mostlygeek/llama-swap/pull/1048) |
| [ROCm/rocm-systems](https://github.com/ROCm/rocm-systems) | 1 | 0 | [fix(rocjitsu): avoid a GCC 15 free-nonheap-object false positive in build_cfg](https://github.com/ROCm/rocm-systems/pull/13075) |
| [ROCm/ROCmValidationSuite](https://github.com/ROCm/ROCmValidationSuite) | 0 | 5 | [ci: check out the PR head commit so fork PRs build](https://github.com/ROCm/ROCmValidationSuite/pull/1353) |
| [bentoml/llm-optimizer](https://github.com/bentoml/llm-optimizer) | 0 | 3 | [fix: stop waiting when the server exits; add --server-timeout](https://github.com/bentoml/llm-optimizer/pull/31) |
| [ROCm/TheRock](https://github.com/ROCm/TheRock) | 0 | 2 | [docs: add Ubuntu 26.04 notes to the environment setup guide](https://github.com/ROCm/TheRock/pull/8848) |
| [FoggedLens/deflock-app](https://github.com/FoggedLens/deflock-app) | 0 | 1 | [fix(tiles): pause/cap tile retries when offline (#136)](https://github.com/FoggedLens/deflock-app/pull/189) |
| [ROCm/libhipcxx](https://github.com/ROCm/libhipcxx) | 0 | 1 | [fix(ci): derive LLVM_PATH from ROCM_PATH instead of hardcoding /opt/rocm](https://github.com/ROCm/libhipcxx/pull/37) |
| [rust-lang/stdarch](https://github.com/rust-lang/stdarch) | 0 | 1 | [amdgpu: document that ds_permute/ds_bpermute take a byte address](https://github.com/rust-lang/stdarch/pull/2258) |
<!-- upstream:end -->

Updated daily · [every PR →](https://bernardogv.com/upstream/)

#### Built with Claude Code

- **[comfyui-mcp](https://github.com/bernardogv/comfyui-mcp)**: 16-tool MCP server that drives a remote ComfyUI: graph-rewriting overrides, batching, curation, Python graph authoring.
- **[proton-mcp-server](https://github.com/bernardogv/proton-mcp-server)**: email for AI agents over Proton Bridge, with preview-before-send guardrails.
- **[claude-homelab-plugin](https://github.com/bernardogv/claude-homelab-plugin)**: a skill, slash commands, an operator subagent and an SSH MCP server with guardrails, gated by `claude plugin eval` suites on every release.
- **Local-model delegation**: Claude scopes and verifies; a coder model on a DGX Spark writes the code in an isolated worktree; tests that must fail first decide what gets committed.

#### The lab

2× DGX Spark (GB10) · Strix Halo (Ryzen AI Max+ 395) · 200 Gb/s RoCE between the Sparks · a MAAS bare-metal fleet provisioned from Terraform PRs · 12U rack · every number in a dated casebook. Write-ups: [spark-serving-bench](https://github.com/bernardogv/spark-serving-bench).

<sub>Personal account. Views and projects are my own, not my employer's.</sub>
