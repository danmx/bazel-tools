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
        urls = ["https://github.com/drone/drone-cli/releases/download/v1.4.0/drone_darwin_amd64.tar.gz"],
        sha256 = "3c717210cf862058f9bf203927df95e4502287b60cbcd4498a86e1e9c66976cd",
        build_file = "@com_github_danmx_bazel_tools//drone-cli:drone.BUILD",
    )
    http_archive(
        name = "drone-windows-amd64",
        urls = ["https://github.com/drone/drone-cli/releases/download/v1.7.0/drone_windows_amd64.tar.gz"],
        sha256 = "6e01e35560a64f713bd6ff039ba3b1f90c316e581099f9f6651ef3082e0b5546",
        build_file = "@com_github_danmx_bazel_tools//drone-cli:drone_windows.BUILD",
    )
