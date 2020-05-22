_VERSION = "1.27.0"
_BINARIES = {
    "windows-amd64": {
        "suffix": ".exe-{version}-windows-amd64.zip",
        "sha256": "bf781f05b0d393b4bf0a327d9e62926949a4f14d7774d950c4e009fc766ed1d4",
        "archive": "zip",
    },
    "linux-amd64": {
        "suffix": "-{version}linux-amd64",
        "sha256": "8d345e4e88520e21c113d81978e89ad77fc5b13bfdf20e5bca86b83fc4261272",
        "archive": "tar.gz",
    },
    "darwin-amd64": {
        "suffix": "-{version}-darwin-amd64",
        "sha256": "3fb1a1683a29c6c0a8cd76135f62b606fbdd538d5a7aeab94af1af70ffdc2fd4",
        "archive": "tar.gz",
    },
}
_DOWNLOAD_URI = "https://github.com/golangci/golangci-lint/releases/download/v{version}/golangci-lint{suffix}.{archive}"

def _golangci_lint_download_impl(ctx):
    if ctx.os.name == "linux":
        arch = "linux-amd64"
    elif ctx.os.name == "mac os x":
        arch = "darwin-amd64"
    else:
        fail("Unsupported operating system: {}".format(ctx.os.name))

    if arch not in _BINARIES:
        fail("Unsupported arch {}".format(arch))

    url = _DOWNLOAD_URI.format(
        version = _VERSION,
        suffix = _BINARIES.get(arch).get("suffix").format(version = _VERSION),
        archive = _BINARIES.get(arch).get("archive"),
    )
    sha256 = _BINARIES.get(arch).get("sha256")

    ctx.template(
        "BUILD.bazel",
        Label("//golangci-lint:golangci-lint.build.bazel"),
        executable = False,
    )
    ctx.download_and_extract(
        url = url,
        sha256 = sha256,
        stripPrefix = "golangci-lint" + _BINARIES.get(arch).get("suffix").format(version = _VERSION),
    )

_golangci_lint_download = repository_rule(
    implementation = _golangci_lint_download_impl,
)

def golangci_lint_dependencies():
    _golangci_lint_download(
        name = "com_github_danmx_bazel_tools_golangci-lint",
    )
