load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def golangci_lint_dependencies():
    http_archive(
        name = "golangci-lint-linux-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.31.0/golangci-lint-1.31.0-linux-amd64.tar.gz"],
        sha256 = "9fff85f4649d17d18ebbcb775fec05de42a83e08787af1850f8f5f8dd4c066e9",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.31.0-linux-amd64",
    )
    http_archive(
        name = "golangci-lint-darwin-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.31.0/golangci-lint-1.31.0-darwin-amd64.tar.gz"],
        sha256 = "f3afeb6ad6964615e2b238f56cc2e5b32464f2f302a4f3ccf5874a04170c287a",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.31.0-darwin-amd64",
    )
    http_archive(
        name = "golangci-lint-windows-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.31.0/golangci-lint-1.31.0-windows-amd64.tar.gz"],
        sha256 = "6ce6b1d3207a63256d82fbbac80bb9e85d7705ec1a408f005dfe324457c54966",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.31.0-windows-amd64",
    )
