alias(
    name = "run",
    actual = select({
        "@com_github_danmx_bazel_tools//bazel/platforms:linux-x86_64": "@drone-linux-amd64//:drone",
        "@com_github_danmx_bazel_tools//bazel/platforms:macos-x86_64": "@drone-darwin-amd64//:drone",
        "@com_github_danmx_bazel_tools//bazel/platforms:windows-x86_64": "@drone-windows-amd64//:drone.exe",
    }),
    visibility = ["//visibility:public"],
)
