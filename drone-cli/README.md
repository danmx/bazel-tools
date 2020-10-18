# drone-cli

Bazel rule for [drone-cli](https://github.com/drone/drone-cli).

## Usage

You can invoke `drone-cli` via the Bazel rule.

`WORKSPACE` file:

```bzl
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "com_github_danmx_bazel_tools",
    commit = "<commit>",
    remote = "https://github.com/danmx/bazel-tools.git",
    shallow_since = "<bla>",
)

load("@com_github_danmx_bazel_tools//drone-cli:deps.bzl", "drone_cli_dependencies")

drone_cli_dependencies()
```

Invoke with

```console
bazel run @com_github_danmx_bazel_tools//drone-cli:run -- --help
```
