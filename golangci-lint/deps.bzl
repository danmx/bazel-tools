load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def golangci_lint_dependencies():
    http_archive(
        name = "golangci-lint-linux-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.55.2/golangci-lint-1.55.2-linux-amd64.tar.gz"],
        sha256 = "ca21c961a33be3bc15e4292dc40c98c8dcc5463a7b6768a3afc123761630c09c",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.55.2-linux-amd64",
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
