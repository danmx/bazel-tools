load("//run_in_workspace:def.bzl", "workspace_binary")

def golangci_lint(
        name,
        args = None,
        visibility = None):
    workspace_binary(
        name = name,
        args = args,
        visibility = visibility,
        cmd = "@com_github_danmx_bazel_tools_golangci-lint//:golangci-lint",
    )
