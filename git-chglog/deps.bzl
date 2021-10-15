load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def git_chglog_dependencies():
    http_file(
        name = "git-chglog-linux-amd64",
        urls = ["https://github.com/git-chglog/git-chglog/releases/download/0.15.0/git-chglog_linux_amd64"],
        sha256 = "815ff0b78b3c3a0cc5e5e456d5f022a56d1f8e34d99165e4476e74be68646854",
        executable = True,
        downloaded_file_path = "git-chglog",
    )
    http_file(
        name = "git-chglog-darwin-amd64",
        urls = ["https://github.com/git-chglog/git-chglog/releases/download/0.15.0/git-chglog_darwin_amd64"],
        sha256 = "286497fb978e1ed70c7a9a1076ee47060547e2a8230b0f1a0d566b112a338e99",
        executable = True,
        downloaded_file_path = "git-chglog",
    )
    http_file(
        name = "git-chglog-windows-amd64",
        urls = ["https://github.com/git-chglog/git-chglog/releases/download/0.15.0/git-chglog_windows_amd64.exe"],
        sha256 = "d44ca8282c547c5e02529e10a4fcc11ff00d149b6d2c411ae6cb1b3b1b44ecb4",
        executable = True,
        downloaded_file_path = "git-chglog",
    )
