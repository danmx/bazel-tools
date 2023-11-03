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
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.55.2/golangci-lint-1.55.2-darwin-amd64.tar.gz"],
        sha256 = "632e96e6d5294fbbe7b2c410a49c8fa01c60712a0af85a567de85bcc1623ea21",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.55.2-darwin-amd64",
    )
    http_archive(
        name = "golangci-lint-windows-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.55.1/golangci-lint-1.55.1-windows-amd64.zip"],
        sha256 = "3a92f369cf8402ea163436e5550a8c03ba536b5a0e76e0ab145208abeb14b938",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint_windows.BUILD",
        strip_prefix = "golangci-lint-1.55.1-windows-amd64",
    )
