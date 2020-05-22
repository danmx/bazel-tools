_VERSION = "v1.2.1"
_BINARIES = {
    "windows-amd64": {
        "suffix": "windows_amd64.tar.gz",
        "sha256": "58621ce64bbbb060d4eccccc71061bb9671fef7d1980c74200aae12a669810cb",
    },
    "linux-amd64": {
        "suffix": "linux_amd64.tar.gz",
        "sha256": "c28f724eb44ad756e550789824b9c73d4970da884966bc71552a281815c13f0a",
    },
    "linux-arm": {
        "suffix": "linux_arm.tar.gz",
        "sha256": "297ea83310a7da43d5b25b1ea88cd72c62b024197d58bcf7ab6e7f2b36d4f9eb",
    },
    "linux-arm64": {
        "suffix": "linux_arm64.tar.gz",
        "sha256": "31d3faf3cf9ffac1cacbd7695cfd1eadfc9695d6a08d789b0857298fbeacb386",
    },
    "darwin-amd64": {
        "suffix": "darwin_amd64.tar.gz",
        "sha256": "0b0028ed785c10455a4d67a099de4979cce7825bc97af91d7ebca61525766923",
    },
}
_DOWNLOAD_URI = "https://github.com/drone/drone-cli/releases/download/{version}/drone_{suffix}"

def _drone_cli_download_impl(ctx):
    if ctx.os.name == "linux":
        arch = "linux-amd64"
    elif ctx.os.name == "mac os x":
        arch = "darwin-amd64"
    else:
        fail("Unsupported operating system: {}".format(ctx.os.name))

    if arch not in _BINARIES:
        fail("Unsupported arch {}".format(arch))

    url = _DOWNLOAD_URI.format(version = _VERSION, suffix = _BINARIES.get(arch).get("suffix"))
    sha256 = _BINARIES.get(arch).get("sha256")

    ctx.template(
        "BUILD.bazel",
        Label("//drone-cli:drone.build.bazel"),
        executable = False,
    )
    ctx.download_and_extract(
        url = url,
        sha256 = sha256,
    )

_drone_cli_download = repository_rule(
    implementation = _drone_cli_download_impl,
)

def drone_cli_dependencies():
    _drone_cli_download(
        name = "com_github_danmx_bazel_tools_drone-cli",
    )
