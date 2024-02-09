load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def golangci_lint_dependencies():
    http_archive(
        name = "golangci-lint-linux-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.56.1/golangci-lint-1.56.1-linux-amd64.tar.gz"],
        sha256 = "aaf8260c76530f7571c49a7bc34b2ecd15accac21106710d47463a2313f1f663",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.56.1-linux-amd64",
    )
    http_archive(
        name = "golangci-lint-darwin-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.56.1/golangci-lint-1.56.1-darwin-amd64.tar.gz"],
        sha256 = "62f02d4c0e8f6f8c77e787b8f271cdd1535eb7d2a28742e2535608652271018e",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.56.1-darwin-amd64",
    )
    http_archive(
        name = "golangci-lint-windows-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.56.1/golangci-lint-1.56.1-windows-amd64.zip"],
        sha256 = "3b63660fdce7009f454c5aa70c2d71f15c6083b357ca6fe655b634232363793c",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint_windows.BUILD",
        strip_prefix = "golangci-lint-1.56.1-windows-amd64",
    )
