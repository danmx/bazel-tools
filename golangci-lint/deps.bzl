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
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.53.2/golangci-lint-1.53.2-darwin-amd64.tar.gz"],
        sha256 = "a4e83f5bfe52f42134c9783aa68ba31104c36e2ad4c221a3c77510dda66ae81c",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.53.2-darwin-amd64",
    )
    http_archive(
        name = "golangci-lint-windows-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.53.2/golangci-lint-1.53.2-windows-amd64.zip"],
        sha256 = "7bf18716b68c4d5a99d88d3adc4aab642a7045813afa212db2aac0d56db33e97",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint_windows.BUILD",
        strip_prefix = "golangci-lint-1.53.2-windows-amd64",
    )
