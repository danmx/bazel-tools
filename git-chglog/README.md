# git-chglog

Bazel rule for [git-chglog](https://github.com/git-chglog/git-chglog).

## Usage

You can invoke `git-chglog` via the Bazel rule.

`WORKSPACE` file:

```bzl
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "com_github_danmx_bazel_tools",
    commit = "<commit>",
    remote = "https://github.com/danmx/bazel-tools.git",
    shallow_since = "<bla>",
)

load("@com_github_danmx_bazel_tools//git-chglog:deps.bzl", "git_chglog_dependencies")

git_chglog_dependencies()
```

`BUILD.bazel` typically in the workspace root:

```bzl
load("@com_github_danmx_bazel_tools//git-chglog:def.bzl", "git_chglog")

git_chglog(
    name = "git_chglog",
    args = [
        "-o",
        "CHANGELOG.md",
    ],
)
```

Invoke with

```console
bazel run //:git_chglog
```
