load("@com_github_bazelbuild_buildtools//buildifier:def.bzl", "buildifier")

buildifier(
    name = "buildifier",
)

buildifier(
    name = "buildifier_check",
    diff_command = "diff -u",
    lint_mode = "warn",
    mode = "diff",
)
