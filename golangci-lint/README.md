# golangci-lint

Bazel rule for [golangci-lint](https://github.com/golangci/golangci-lint).

## Usage

You can invoke `golangci-lint` via the Bazel rule.

`WORKSPACE` file:

```bzl
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "com_github_danmx_bazel_tools",
    commit = "<commit>",
    remote = "https://github.com/danmx/bazel-tools.git",
    shallow_since = "<bla>",
)

load("@com_github_danmx_bazel_tools//golangci-lint:deps.bzl", "drone_dependencies")

drone_dependencies()
```

`BUILD.bazel` typically in the workspace root:

```bzl
load("@com_github_danmx_bazel_tools//golangci-lint:def.bzl", "golangci_lint")

golangci_lint(
    name = "lint",
    args = [
        "run",
        "./...",
    ],
)
```

Invoke with

```console
bazel run //:lint
```
