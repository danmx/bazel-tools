load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def golangci_lint_dependencies():
    http_archive(
        name = "golangci-lint-linux-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.55.1/golangci-lint-1.55.1-linux-amd64.tar.gz"],
        sha256 = "cef6f21add7326e159822b779d366bed15eb741e686b0429c3e5e04fe77998ef",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.55.1-linux-amd64",
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
