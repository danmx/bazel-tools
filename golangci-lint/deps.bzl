load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def golangci_lint_dependencies():
    http_archive(
        name = "golangci-lint-linux-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.38.0/golangci-lint-1.38.0-linux-amd64.tar.gz"],
        sha256 = "97be8342ac9870bee003904bd8de25c0f3169c6b6238a013d6d6862efa5af992",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.38.0-linux-amd64",
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
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.38.0/golangci-lint-1.38.0-windows-amd64.zip"],
        sha256 = "1d3ecd6d78ed956ab237911137443d87777d60213af79c8f15a8c622c70199b3",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint_windows.BUILD",
        strip_prefix = "golangci-lint-1.38.0-windows-amd64",
    )
