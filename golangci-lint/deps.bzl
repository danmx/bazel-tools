load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def golangci_lint_dependencies():
    http_archive(
        name = "golangci-lint-linux-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.56.2/golangci-lint-1.56.2-linux-amd64.tar.gz"],
        sha256 = "e1c313fb5fc85a33890fdee5dbb1777d1f5829c84d655a47a55688f3aad5e501",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.56.2-linux-amd64",
    )
    http_archive(
        name = "golangci-lint-darwin-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.57.1/golangci-lint-1.57.1-darwin-amd64.tar.gz"],
        sha256 = "7b6ce262d6b318822ad6ad866da31a7e0e8f8042ec2b1a34018488532d9beb50",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.57.1-darwin-amd64",
    )
    http_archive(
        name = "golangci-lint-windows-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.56.1/golangci-lint-1.56.1-windows-amd64.zip"],
        sha256 = "3b63660fdce7009f454c5aa70c2d71f15c6083b357ca6fe655b634232363793c",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint_windows.BUILD",
        strip_prefix = "golangci-lint-1.56.1-windows-amd64",
    )
