load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def drone_cli_dependencies():
    http_archive(
        name = "drone-linux-amd64",
        urls = ["https://github.com/drone/drone-cli/releases/download/v1.2.2/drone_linux_amd64.tar.gz"],
        sha256 = "59969ed403cab2e8fada1caaf8132c23f5689fde1c7dd9a807cef8786ef25924",
        build_file = "@com_github_danmx_bazel_tools//drone-cli:drone.BUILD",
    )
    http_archive(
        name = "drone-darwin-amd64",
        urls = ["https://github.com/drone/drone-cli/releases/download/v1.2.2/drone_darwin_amd64.tar.gz"],
        sha256 = "73f96ad0a9f3038463a86408b231b80758e64aa4ce85534933d85ee718ae096c",
        build_file = "@com_github_danmx_bazel_tools//drone-cli:drone.BUILD",
    )
    http_archive(
        name = "drone-windows-amd64",
        urls = ["https://github.com/drone/drone-cli/releases/download/v1.2.4/drone_windows_amd64.tar.gz"],
        sha256 = "330bf00e1409d80760b0e90f6758442e66281ace3bd17ece8dddcb3aaa8c7965",
        build_file = "@com_github_danmx_bazel_tools//drone-cli:drone_windows.BUILD",
    )
