load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def golangci_lint_dependencies():
    http_archive(
        name = "golangci-lint-linux-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.42.1/golangci-lint-1.42.1-linux-amd64.tar.gz"],
        sha256 = "214b093c15863430c4b66dd39df677dab6e38fc873ded147e331740d50eea51f",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.42.1-linux-amd64",
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
