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
        urls = ["https://github.com/git-chglog/git-chglog/releases/download/v0.15.0/git-chglog_0.15.0_darwin_amd64.tar.gz"],
        sha256 = "286497fb978e1ed70c7a9a1076ee47060547e2a8230b0f1a0d566b112a338e99",
        build_file = "@com_github_danmx_bazel_tools//git-chglog:git-chglog.BUILD",
    )
    http_archive(
        name = "git-chglog-windows-amd64",
        urls = ["https://github.com/git-chglog/git-chglog/releases/download/v0.15.4/git-chglog_0.15.4_windows_amd64.zip"],
        sha256 = "0e7e9421565714f56885f068ae434416a6a3177b6ff65f350afe580e201289a6",
        build_file = "@com_github_danmx_bazel_tools//git-chglog:git-chglog_windows.BUILD",
    )
