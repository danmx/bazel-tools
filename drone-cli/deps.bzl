load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def drone_cli_dependencies():
    http_archive(
        name = "drone-linux-amd64",
        urls = ["https://github.com/drone/drone-cli/releases/download/v1.4.0/drone_linux_amd64.tar.gz"],
        sha256 = "cc16d7ea7bf1faff2a15a352acb9f7d9223cd4f888a285c31ed226023f34642c",
        build_file = "@com_github_danmx_bazel_tools//drone-cli:drone.BUILD",
    )
    http_archive(
        name = "drone-darwin-amd64",
        urls = ["https://github.com/drone/drone-cli/releases/download/v1.4.0/drone_darwin_amd64.tar.gz"],
        sha256 = "3c717210cf862058f9bf203927df95e4502287b60cbcd4498a86e1e9c66976cd",
        build_file = "@com_github_danmx_bazel_tools//drone-cli:drone.BUILD",
    )
    http_archive(
        name = "drone-windows-amd64",
        urls = ["https://github.com/drone/drone-cli/releases/download/v1.4.0/drone_windows_amd64.tar.gz"],
        sha256 = "85e6738ee5ba43b3bdc4ce956a1ded55257383976f34e536f43ba1c15e2309a5",
        build_file = "@com_github_danmx_bazel_tools//drone-cli:drone_windows.BUILD",
    )
