load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def git_chglog_dependencies():
    http_archive(
        name = "git-chglog-linux-amd64",
        urls = ["https://github.com/git-chglog/git-chglog/releases/download/v0.15.4/git-chglog_0.15.4_linux_amd64.tar.gz"],
        sha256 = "03cbeedbd1317289295e75016fa0acd26baeb2fc7810ed287361dd9bd8bc33a8",
        build_file = "@com_github_danmx_bazel_tools//git-chglog:git-chglog.BUILD",
    )
    http_archive(
        name = "git-chglog-darwin-amd64",
        urls = ["https://github.com/git-chglog/git-chglog/releases/download/v0.15.4/git-chglog_0.15.4_darwin_amd64.tar.gz"],
        sha256 = "5cd320f82138413b2a21e63346532588f5d4f2ca1ca5c523ef43883de8115e73",
        build_file = "@com_github_danmx_bazel_tools//git-chglog:git-chglog.BUILD",
    )
    http_archive(
        name = "git-chglog-windows-amd64",
        urls = ["https://github.com/git-chglog/git-chglog/releases/download/v0.15.4/git-chglog_0.15.4_windows_amd64.zip"],
        sha256 = "0e7e9421565714f56885f068ae434416a6a3177b6ff65f350afe580e201289a6",
        build_file = "@com_github_danmx_bazel_tools//git-chglog:git-chglog_windows.BUILD",
    )
