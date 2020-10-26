alias(
    name = "run",
    actual = select({
        "@com_github_danmx_bazel_tools//bazel/platforms:linux-x86_64": "@golangci-lint-linux-amd64//:golangci-lint",
        "@com_github_danmx_bazel_tools//bazel/platforms:macos-x86_64": "@golangci-lint-darwin-amd64//:golangci-lint",
        "@com_github_danmx_bazel_tools//bazel/platforms:windows-x86_64": "@golangci-lint-windows-amd64//:golangci-lint.exe",
    }),
    visibility = ["//visibility:public"],
)
