load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def golangci_lint_dependencies():
    http_archive(
        name = "golangci-lint-linux-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.53.2/golangci-lint-1.53.2-linux-amd64.tar.gz"],
        sha256 = "2298f73b9bc03b88b91fee06c5d519fc7f9d7f328e2c388615bbd7e85a9d6cae",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.53.2-linux-amd64",
    )
    http_archive(
        name = "golangci-lint-darwin-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.55.0/golangci-lint-1.55.0-darwin-amd64.tar.gz"],
        sha256 = "5675667f4961a7725e8d3ed6eb01d521160252095b5cae2c1c283f713dd85f80",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.55.0-darwin-amd64",
    )
    http_archive(
        name = "golangci-lint-windows-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.55.0/golangci-lint-1.55.0-windows-amd64.zip"],
        sha256 = "9be37b06047b34c0ec3c0a246743ad83c021e6484bdaf9e79e7bd5c14315c6fc",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint_windows.BUILD",
        strip_prefix = "golangci-lint-1.55.0-windows-amd64",
    )
