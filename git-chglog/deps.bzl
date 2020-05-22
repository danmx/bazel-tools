_VERSION = "0.9.1"
_BINARIES = {
    "windows-amd64": {
        "suffix": "windows_amd64.exe",
        "sha256": "d14da18c6008de0c240b75991368a137068c8a06d3d4c3c240ddc806fd7b9612",
    },
    "windows-386": {
        "suffix": "windows_386.exe",
        "sha256": "00971cd3718084f405002d9732ad8758469b04a059feae96f3a943a0706065dd",
    },
    "linux-amd64": {
        "suffix": "linux_amd64",
        "sha256": "dca7d683a45cf4f0a871735d9981de4e787ef86b82282e8adc813b8738d2c531",
    },
    "linux-386": {
        "suffix": "linux_386",
        "sha256": "25021b185b706e3f0b3cdc56e1f69e1263c5f0d157725e2df0965b31eb2240d8",
    },
    "darwin-amd64": {
        "suffix": "darwin_amd64",
        "sha256": "2023d82b5b505cf8ac4db20f096f439650554e80eb509fe080f5e81b6b477d3c",
    },
    "darwin-386": {
        "suffix": "darwin_386",
        "sha256": "02011ddcbb5f2c21ba71cbd3bbe978cf74362ba579f31f6178ff835addd9f097",
    },
}
_DOWNLOAD_URI = "https://github.com/git-chglog/git-chglog/releases/download/{version}/git-chglog_{suffix}"

def _git_chglog_download_impl(ctx):
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
        Label("//git-chglog:git-chglog.build.bazel"),
        executable = False,
    )
    ctx.download(
        output = "git-chglog",
        url = url,
        sha256 = sha256,
        executable = True,
    )

_git_chglog_download = repository_rule(
    implementation = _git_chglog_download_impl,
)

def git_chglog_dependencies():
    _git_chglog_download(
        name = "com_github_danmx_bazel_tools_git-chglog",
    )
