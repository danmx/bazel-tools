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

load("@com_github_danmx_bazel_tools//drone-cli:deps.bzl", "drone_dependencies")

drone_dependencies()
```

`BUILD.bazel` typically in the workspace root:

```bzl
load("@com_github_danmx_bazel_tools//drone-cli:def.bzl", "drone")

drone(
    name = "drone-fmt",
    args = [
        "fmt",
        "--save",
        ".drone.yml",
    ],
)
```

Invoke with

```console
bazel run //:drone-fmt
```
