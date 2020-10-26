load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def golangci_lint_dependencies():
    http_archive(
        name = "golangci-lint-linux-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.32.0/golangci-lint-1.32.0-linux-amd64.tar.gz"],
        sha256 = "774fc71efc2b41327aeca7bdff335c6387ff3750e0cfd5cc18a64709ba1e412a",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.32.0-linux-amd64",
    )
    http_archive(
        name = "golangci-lint-darwin-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.32.0/golangci-lint-1.32.0-darwin-amd64.tar.gz"],
        sha256 = "294bca5902a5c992345dc773549cabcf25029383aa3bafd06cf65d0164b22faf",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.32.0-darwin-amd64",
    )
    http_archive(
        name = "golangci-lint-windows-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.31.0/golangci-lint-1.31.0-windows-amd64.tar.gz"],
        sha256 = "6ce6b1d3207a63256d82fbbac80bb9e85d7705ec1a408f005dfe324457c54966",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.31.0-windows-amd64",
    )
