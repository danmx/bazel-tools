load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def drone_cli_dependencies():
    http_archive(
        name = "drone-linux-amd64",
        urls = ["https://github.com/drone/drone-cli/releases/download/v1.7.0/drone_linux_amd64.tar.gz"],
        sha256 = "2bdb4f2af28aebaaba544b2b3bce188836eae74f337d98944b885947713ee797",
        build_file = "@com_github_danmx_bazel_tools//drone-cli:drone.BUILD",
    )
    http_archive(
        name = "drone-darwin-amd64",
        urls = ["https://github.com/drone/drone-cli/releases/download/v1.8.0/drone_darwin_amd64.tar.gz"],
        sha256 = "7c5bdbeb5441637fe5caa4e4129de82f1cc34b42349761a83cea36fdd5ef1e10",
        build_file = "@com_github_danmx_bazel_tools//drone-cli:drone.BUILD",
    )
    http_archive(
        name = "drone-windows-amd64",
        urls = ["https://github.com/drone/drone-cli/releases/download/v1.8.0/drone_windows_amd64.tar.gz"],
        sha256 = "bce555071f2f1951f0451d9766ff10dc3652029fcf372ff1efa330cc7153c3e7",
        build_file = "@com_github_danmx_bazel_tools//drone-cli:drone_windows.BUILD",
    )
