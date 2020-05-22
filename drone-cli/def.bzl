load("//run_in_workspace:def.bzl", "workspace_binary")

def drone(
        name,
        args = None,
        visibility = None):
    workspace_binary(
        name = name,
        args = args,
        visibility = visibility,
        cmd = "@com_github_danmx_bazel_tools_drone-cli//:drone",
    )
