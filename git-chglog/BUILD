alias(
    name = "run",
    actual = select({
        "@com_github_danmx_bazel_tools//bazel/platforms:linux-x86_64": "@git-chglog-linux-amd64//:git-chglog",
        "@com_github_danmx_bazel_tools//bazel/platforms:macos-x86_64": "@git-chglog-darwin-amd64//:git-chglog",
        "@com_github_danmx_bazel_tools//bazel/platforms:windows-x86_64": "@git-chglog-windows-amd64//:git-chglog.exe",
    }),
    visibility = ["//visibility:public"],
)
