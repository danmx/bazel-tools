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
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.42.1/golangci-lint-1.42.1-darwin-amd64.tar.gz"],
        sha256 = "9c0042e91218dc1dd4eb7b54e29c7331eff081b3ac3f88b0d5df89b976fcd45c",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint.BUILD",
        strip_prefix = "golangci-lint-1.42.1-darwin-amd64",
    )
    http_archive(
        name = "golangci-lint-windows-amd64",
        urls = ["https://github.com/golangci/golangci-lint/releases/download/v1.42.1/golangci-lint-1.42.1-windows-amd64.zip"],
        sha256 = "607d68f0960e3a7b69c73bc0164710dabb4ece06c509afa3584b475194e8d720",
        build_file = "@com_github_danmx_bazel_tools//golangci-lint:golangci-lint_windows.BUILD",
        strip_prefix = "golangci-lint-1.42.1-windows-amd64",
    )
