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
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.56.2/golangci-lint-1.56.2-darwin-amd64.tar.gz"],
        sha256 = "15c4d19a2c85a04f67779047dbb9467ba176c71fff762a0d514a21bb75e4b42c",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.56.2-darwin-amd64",
    )
    http_archive(
        name = "golangci-lint-windows-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.57.0/golangci-lint-1.57.0-windows-amd64.zip"],
        sha256 = "b0134b67e8514812769f42ab5be60f4ecec3c07e5839b1d1f716cf71b3af9cd8",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint_windows.BUILD",
        strip_prefix = "golangci-lint-1.57.0-windows-amd64",
    )
