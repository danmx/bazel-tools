load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def golangci_lint_dependencies():
    http_archive(
        name = "golangci-lint-linux-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.56.0/golangci-lint-1.56.0-linux-amd64.tar.gz"],
        sha256 = "3a6343a67ad1b682f351fe96621670e149dd2bcd11c1fd3e8b654030d39f8ebf",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.56.0-linux-amd64",
    )
    http_archive(
        name = "golangci-lint-darwin-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.56.0/golangci-lint-1.56.0-darwin-amd64.tar.gz"],
        sha256 = "650e74d63e5c499bd80a1f0febf0136c1feb66daf888c1a04ec716a0ef9f8745",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.56.0-darwin-amd64",
    )
    http_archive(
        name = "golangci-lint-windows-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.55.2/golangci-lint-1.55.2-windows-amd64.zip"],
        sha256 = "f57d434d231d43417dfa631587522f8c1991220b43c8ffadb9c7bd279508bf81",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint_windows.BUILD",
        strip_prefix = "golangci-lint-1.55.2-windows-amd64",
    )
