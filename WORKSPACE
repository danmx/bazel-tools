workspace(name = "com_github_danmx_bazel_tools")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

########################################
# Buildifier
########################################
http_archive(
    name = "io_bazel_rules_go",
    sha256 = "d1ffd055969c8f8d431e2d439813e42326961d0942bdf734d2c95dc30c369566",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.24.5/rules_go-v0.24.5.tar.gz",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.46.0/rules_go-v0.24.5.tar.gz",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains()

http_archive(
    name = "bazel_gazelle",
    sha256 = "32938bda16e6700063035479063d9d24c60eda8d79fd4739563f50d331cb3209",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.35.0/bazel-gazelle-v0.35.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.35.0/bazel-gazelle-v0.35.0.tar.gz",
    ],
)

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

gazelle_dependencies()

http_archive(
    name = "com_google_protobuf",
    sha256 = "d19643d265b978383352b3143f04c0641eea75a75235c111cc01a1350173180e",
    strip_prefix = "protobuf-25.3",
    urls = ["https://github.com/protocolbuffers/protobuf/archive/refs/tags/v25.3.tar.gz"],
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

http_archive(
    name = "com_github_bazelbuild_buildtools",
    sha256 = "061472b3e8b589fb42233f0b48798d00cf9dee203bd39502bd294e6b050bc6c2",
    strip_prefix = "buildtools-7.1.0",
    url = "https://github.com/bazelbuild/buildtools/archive/refs/tags/v7.1.0.tar.gz",
)
