load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def git_chglog_dependencies():
    http_file(
        name = "git-chglog-linux-amd64",
        urls = ["https://github.com/git-chglog/git-chglog/releases/download/0.9.1/git-chglog_linux_amd64"],
        sha256 = "dca7d683a45cf4f0a871735d9981de4e787ef86b82282e8adc813b8738d2c531",
        executable = True,
        downloaded_file_path = "git-chglog",
    )
    http_file(
        name = "git-chglog-darwin-amd64",
        urls = ["https://github.com/git-chglog/git-chglog/releases/download/0.9.1/git-chglog_darwin_amd64"],
        sha256 = "2023d82b5b505cf8ac4db20f096f439650554e80eb509fe080f5e81b6b477d3c",
        executable = True,
        downloaded_file_path = "git-chglog",
    )
    http_file(
        name = "git-chglog-windows-amd64",
        urls = ["https://github.com/git-chglog/git-chglog/releases/download/0.9.1/git-chglog_windows_amd64.exe"],
        sha256 = "d14da18c6008de0c240b75991368a137068c8a06d3d4c3c240ddc806fd7b9612",
        executable = True,
        downloaded_file_path = "git-chglog",
    )
