# run_in_workspace

Bazel rule for running commands in your workspace.

## Usage

You can invoke for example `gofmt` via the Bazel rule.

`WORKSPACE` file:

```bzl
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository", "http_archive")

# rules_go
http_archive(
    name = "io_bazel_rules_go",
    sha256 = "87f0fb9747854cb76a0a82430adccb6269f7d394237104a4523b51061c469171",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.23.1/rules_go-v0.23.1.tar.gz",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.23.1/rules_go-v0.23.1.tar.gz",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(
    go_version = "1.14.3",
)

git_repository(
    name = "com_github_danmx_bazel_tools",
    commit = "<commit>",
    remote = "https://github.com/danmx/bazel-tools.git",
    shallow_since = "<bla>",
)
```

`BUILD.bazel` typically in the workspace root:

```bzl
load("@com_github_danmx_bazel_tools//run_in_workspace:def.bzl", "workspace_binary")

workspace_binary(
    name = "gofmt",
    args = [
        "-s",
        "-w",
        ".",
    ],
    cmd = "@go_sdk//:bin/gofmt",
)
```

Invoke with

```console
bazel run //:gofmt
```
