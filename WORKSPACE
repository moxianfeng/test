load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "6b65cb7917b4d1709f9410ffe00ecf3e160edf674b78c54a894471320862184f",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.39.0/rules_go-v0.39.0.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.39.0/rules_go-v0.39.0.zip",
    ],
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "ecba0f04f96b4960a5b250c8e8eeec42281035970aa8852dda73098274d14a1d",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.29.0/bazel-gazelle-v0.29.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.29.0/bazel-gazelle-v0.29.0.tar.gz",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

go_rules_dependencies()

go_register_toolchains(version = "1.20.2")

gazelle_dependencies()

http_archive(
    name = "bazel_skylib",
    sha256 = "b8a1527901774180afc798aeb28c4634bdccf19c4d98e7bdd1ce79d1fe9aaad7",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.4.1/bazel-skylib-1.4.1.tar.gz",
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.4.1/bazel-skylib-1.4.1.tar.gz",
    ],
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

http_archive(
    name = "bazeldnf",
    sha256 = "c6aecb167e41e923aeaa629443dabb7dc37462d96db928c3e91e2b019160e710",
    urls = [
        "https://github.com/rmohr/bazeldnf/releases/download/v0.5.7/bazeldnf-v0.5.7.tar.gz",
    ],
)

load("@bazeldnf//:deps.bzl", "bazeldnf_dependencies", "rpm")

bazeldnf_dependencies()

http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "b1e80761a8a8243d03ebca8845e9cc1ba6c82ce7c5179ce2b295cd36f7e394bf",
    urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.25.0/rules_docker-v0.25.0.tar.gz"],
)

load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)

container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

container_deps()

load("@io_bazel_rules_docker//container:pull.bzl", "container_pull")

container_pull(
    name = "baseimg",
    registry = "quay.io",
    repository = "kubevirt/virt-launcher",
    tag = "v1.0.0-alpha.0",
    digest = "sha256:49ed398374b0a94a5d67cc99051117a9a422a3972aed0c9f87c0eb115ddf2249",
)

rpm(
    name = "acl-0__2.2.53-1.el8.x86_64",
    sha256 = "227de6071cd3aeca7e10ad386beaf38737d081e06350d02208a3f6a2c9710385",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/acl-2.2.53-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "alsa-lib-0__1.2.8-2.el8.x86_64",
    sha256 = "85e359bfb9815fe72dc063790472758a3e8b2861814f695a116fa67fc8871a95",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/alsa-lib-1.2.8-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "audit-libs-0__3.0.7-4.el8.x86_64",
    sha256 = "b37099679b46f9a15d20b7c54fdd993388a8b84105f76869494c1be17140b512",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/audit-libs-3.0.7-4.el8.x86_64.rpm",
    ],
)

rpm(
    name = "basesystem-0__11-5.el8.x86_64",
    sha256 = "48226934763e4c412c1eb65df314e6879720b4b1ebcb3d07c126c9526639cb68",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/basesystem-11-5.el8.noarch.rpm",
    ],
)

rpm(
    name = "bash-0__4.4.20-4.el8.x86_64",
    sha256 = "a104837b8aea5214122cf09c2de436db8f528812c1361c39f2d7471343dc509b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/bash-4.4.20-4.el8.x86_64.rpm",
    ],
)

rpm(
    name = "bzip2-libs-0__1.0.6-26.el8.x86_64",
    sha256 = "19d66d152b745dbd49cea9d21c52aec0ec4d4321edef97a342acd3542404fa31",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/bzip2-libs-1.0.6-26.el8.x86_64.rpm",
    ],
)

rpm(
    name = "ca-certificates-0__2022.2.54-80.2.el8.x86_64",
    sha256 = "3200d42d5585afa93a94600614a82b6e804139b06fff151576a53effd221e12b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/ca-certificates-2022.2.54-80.2.el8.noarch.rpm",
    ],
)

rpm(
    name = "cairo-0__1.15.12-6.el8.x86_64",
    sha256 = "8d94b1b954d06a5443c4e8036c1d51121a6724c1508f37539bbff96dbf806a92",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/cairo-1.15.12-6.el8.x86_64.rpm",
    ],
)

rpm(
    name = "celt051-0__0.5.1.3-15.el8.x86_64",
    sha256 = "f689f4c20fb5de0e9c39b9c5f81e44fe89833aead1597de6454c2b459a2d1742",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/celt051-0.5.1.3-15.el8.x86_64.rpm",
    ],
)

rpm(
    name = "centos-gpg-keys-1__8-6.el8.x86_64",
    sha256 = "567dd699e703dc6f5fa6ddb5548bf0dbd3bda08a0a6b1d10b32fa19012409cd0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/centos-gpg-keys-8-6.el8.noarch.rpm",
    ],
)

rpm(
    name = "centos-stream-release-0__8.6-1.el8.x86_64",
    sha256 = "3b3b86cb51f62632995ace850fbed9efc65381d639f1e1c5ceeff7ccf2dd6151",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/centos-stream-release-8.6-1.el8.noarch.rpm",
    ],
)

rpm(
    name = "centos-stream-repos-0__8-6.el8.x86_64",
    sha256 = "ff0a2d1fb5b00e9a26b05a82675d0dcdf0378ee5476f9ae765b32399c2ee561f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/centos-stream-repos-8-6.el8.noarch.rpm",
    ],
)

rpm(
    name = "chkconfig-0__1.19.1-1.el8.x86_64",
    sha256 = "561b5fdadd60370b5d0a91b7ed35df95d7f60650cbade8c7e744323982ac82db",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/chkconfig-1.19.1-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "coreutils-single-0__8.30-15.el8.x86_64",
    sha256 = "96abd7ec6c1fdfbf845fe71892c50c4ee20dfede79c8070805a0e469c700e2fb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/coreutils-single-8.30-15.el8.x86_64.rpm",
    ],
)

rpm(
    name = "cracklib-0__2.9.6-15.el8.x86_64",
    sha256 = "dbbc9e20caabc30070354d91f61f383081f6d658e09d3c09e6df8764559e5aca",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/cracklib-2.9.6-15.el8.x86_64.rpm",
    ],
)

rpm(
    name = "cracklib-dicts-0__2.9.6-15.el8.x86_64",
    sha256 = "f1ce23ee43c747a35367dada19ca200a7758c50955ccc44aa946b86b647077ca",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/cracklib-dicts-2.9.6-15.el8.x86_64.rpm",
    ],
)

rpm(
    name = "crypto-policies-0__20221215-1.gitece0092.el8.x86_64",
    sha256 = "29d99b0985833aea0b2590036dcbb03e225877c30a18c707f2e149eaf5ba3697",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/crypto-policies-20221215-1.gitece0092.el8.noarch.rpm",
    ],
)

rpm(
    name = "cryptsetup-libs-0__2.3.7-5.el8.x86_64",
    sha256 = "fe2e1ef00d792f44b27afc53dff8a99405de7496756ae3f5f10e91ba2bd1e460",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/cryptsetup-libs-2.3.7-5.el8.x86_64.rpm",
    ],
)

rpm(
    name = "cyrus-sasl-lib-0__2.1.27-6.el8_5.x86_64",
    sha256 = "5bd6e1201d8b10c6f01f500c43f63204f1d2ec8a4d8ce53c741e611c81ffb404",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/cyrus-sasl-lib-2.1.27-6.el8_5.x86_64.rpm",
    ],
)

rpm(
    name = "dbus-1__1.12.8-24.el8.x86_64",
    sha256 = "feba20c1a54cd905cba7ad79665814b084b71fd391f88458d36cc99a0e4786b9",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/dbus-1.12.8-24.el8.x86_64.rpm",
    ],
)

rpm(
    name = "dbus-common-1__1.12.8-24.el8.x86_64",
    sha256 = "5fb132e3a6b3fcedbb13de4ef5004d8c1ee4722cd42f17712e69fbdc1ae70572",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/dbus-common-1.12.8-24.el8.noarch.rpm",
    ],
)

rpm(
    name = "dbus-daemon-1__1.12.8-24.el8.x86_64",
    sha256 = "6b5611899424c5382d9917d74148473535e0e7b9dc7ef8dd74e410b28b5d9342",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/dbus-daemon-1.12.8-24.el8.x86_64.rpm",
    ],
)

rpm(
    name = "dbus-libs-1__1.12.8-24.el8.x86_64",
    sha256 = "4687b9ae45e0bb542c76694db9473c21e88961abc47237156cd9147eaf524be7",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/dbus-libs-1.12.8-24.el8.x86_64.rpm",
    ],
)

rpm(
    name = "dbus-tools-1__1.12.8-24.el8.x86_64",
    sha256 = "a35c85304f8c360779b7488dcc687a95f24a71327de6f33db758f418e0b491b6",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/dbus-tools-1.12.8-24.el8.x86_64.rpm",
    ],
)

rpm(
    name = "device-mapper-8__1.02.181-9.el8.x86_64",
    sha256 = "28f2e3e2a0888e59d23525473d21e3486aabdbbd27b86d40c57b22bbd5a3a323",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/device-mapper-1.02.181-9.el8.x86_64.rpm",
    ],
)

rpm(
    name = "device-mapper-libs-8__1.02.181-9.el8.x86_64",
    sha256 = "8fd6ecaa19fc86b236fb00d1a816eca2ab84e6531ca6fe318bfc1297caee8e88",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/device-mapper-libs-1.02.181-9.el8.x86_64.rpm",
    ],
)

rpm(
    name = "device-mapper-multipath-libs-0__0.8.4-39.el8.x86_64",
    sha256 = "0d75454b53ebbb3e848f0f07bd9a1ceadd4f6897aeea277a7fc3d3d927b2b3e8",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/device-mapper-multipath-libs-0.8.4-39.el8.x86_64.rpm",
    ],
)

rpm(
    name = "elfutils-default-yama-scope-0__0.189-2.el8.x86_64",
    sha256 = "8a9ce60ea520da65631de954a319be6b5b84b2391b848ba3d65a33af6bb4dd13",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/elfutils-default-yama-scope-0.189-2.el8.noarch.rpm",
    ],
)

rpm(
    name = "elfutils-libelf-0__0.189-2.el8.x86_64",
    sha256 = "5c795eba64e1059834fc07177e92287ae92b05b6228ec5fe43c663f56da89934",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/elfutils-libelf-0.189-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "elfutils-libs-0__0.189-2.el8.x86_64",
    sha256 = "79bedf7bea9977cb01d4a0f71b403539c63d40de0354605c35a8db94771e3e7c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/elfutils-libs-0.189-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "expat-0__2.2.5-11.el8.x86_64",
    sha256 = "5deba05aa6366108abb5cc764584eec5594f77c052ef02927f0ce0b3b5cc4065",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/expat-2.2.5-11.el8.x86_64.rpm",
    ],
)

rpm(
    name = "filesystem-0__3.8-6.el8.x86_64",
    sha256 = "50bdb81d578914e0e88fe6b13550b4c30aac4d72f064fdcd78523df7dd2f64da",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/filesystem-3.8-6.el8.x86_64.rpm",
    ],
)

rpm(
    name = "fontconfig-0__2.13.1-4.el8.x86_64",
    sha256 = "1d2c61493d72419e85272e8cbc1a0bf3232c81b9bed4707d68f2bbeef2391a55",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/fontconfig-2.13.1-4.el8.x86_64.rpm",
    ],
)

rpm(
    name = "fontpackages-filesystem-0__1.44-22.el8.x86_64",
    sha256 = "700b9050aa490b5eca6d1f8630cbebceb122fce11c370689b5ccb37f5a43ee2f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/fontpackages-filesystem-1.44-22.el8.noarch.rpm",
    ],
)

rpm(
    name = "freetype-0__2.9.1-9.el8.x86_64",
    sha256 = "0097dc947c987310bb5cbcb9976594eac1e1d111e065ffee150abc2d69b8d709",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/freetype-2.9.1-9.el8.x86_64.rpm",
    ],
)

rpm(
    name = "fribidi-0__1.0.4-9.el8.x86_64",
    sha256 = "6540f56f1d5f191d91e8445d7156bf7fae954c18f07c7191bd0cb0ef38455e05",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/fribidi-1.0.4-9.el8.x86_64.rpm",
    ],
)

rpm(
    name = "gawk-0__4.2.1-4.el8.x86_64",
    sha256 = "ff4438c2dff5bf933d7874fd55f131ca6ee067f8fb4324c89719d63e60b40aba",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gawk-4.2.1-4.el8.x86_64.rpm",
    ],
)

rpm(
    name = "gdbm-1__1.18-2.el8.x86_64",
    sha256 = "fa1751b26519b9637cf3f0a25ea1874eb2df005dde1e1371a3f13d0c9a38b9ca",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gdbm-1.18-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "gdbm-libs-1__1.18-2.el8.x86_64",
    sha256 = "eddcea96342c8cfaa60b79fc2c66cb8c5b0038c3b11855abe55e659b2cad6199",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gdbm-libs-1.18-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "glib2-0__2.56.4-161.el8.x86_64",
    sha256 = "d719ce836f972f57e577f315267f6b5177cc8f8cc9687a8432f1e22cf575bb81",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/glib2-2.56.4-161.el8.x86_64.rpm",
    ],
)

rpm(
    name = "glibc-0__2.28-209.el8.x86_64",
    sha256 = "3f66449519e866ce63bad0cc2e30bc36a16d767ac2ff5d5832d1ff6d7e69a0d4",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/glibc-2.28-209.el8.x86_64.rpm",
    ],
)

rpm(
    name = "glibc-common-0__2.28-209.el8.x86_64",
    sha256 = "a8de45cc24935ee32121b8c05db7d0c663dfde8117fe79be242e70f86e1f6ab5",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/glibc-common-2.28-209.el8.x86_64.rpm",
    ],
)

rpm(
    name = "glibc-langpack-nan-0__2.28-209.el8.x86_64",
    sha256 = "be1aa952e7f124dbef8c9df732ba5adba8ddef165afab336fc9cb1cbd61660e8",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/glibc-langpack-nan-2.28-209.el8.x86_64.rpm",
    ],
)

rpm(
    name = "gmp-1__6.1.2-10.el8.x86_64",
    sha256 = "3b96e2c7d5cd4b49bfde8e52c8af6ff595c91438e50856e468f14a049d8511e2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gmp-6.1.2-10.el8.x86_64.rpm",
    ],
)

rpm(
    name = "gnutls-0__3.6.16-6.el8.x86_64",
    sha256 = "db83285511f8799526cf894bbd481bbc44c4c60dbdd61d3bfd2c96324190c95b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gnutls-3.6.16-6.el8.x86_64.rpm",
    ],
)

rpm(
    name = "google-droid-sans-mono-fonts-0__20120715-13.el8.x86_64",
    sha256 = "6c8ecdbfbd3115ee563584b1a15b3ce4f9fbf1dc5efb145699256778bfb32a49",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/google-droid-sans-mono-fonts-20120715-13.el8.noarch.rpm",
    ],
)

rpm(
    name = "graphite2-0__1.3.10-10.el8.x86_64",
    sha256 = "0f9c3ee5f54ed296f99219bd70fa4f869c4c9986e3766d813a76a0cc5ecee24e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/graphite2-1.3.10-10.el8.x86_64.rpm",
    ],
)

rpm(
    name = "grep-0__3.1-6.el8.x86_64",
    sha256 = "3f8ffe48bb481a5db7cbe42bf73b839d872351811e5df41b2f6697c61a030487",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/grep-3.1-6.el8.x86_64.rpm",
    ],
)

rpm(
    name = "gstreamer1-0__1.16.1-2.el8.x86_64",
    sha256 = "f15ce668cd55f1d5df62902d98ade38a057e3c782549dca3c45ce038b9ae2968",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/gstreamer1-1.16.1-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "gstreamer1-plugins-base-0__1.16.1-2.el8.x86_64",
    sha256 = "755c97a2a0b3460f51c5e70b18ca207eb3b68c1647d6949666f0dfd739dce319",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/gstreamer1-plugins-base-1.16.1-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "gzip-0__1.9-13.el8.x86_64",
    sha256 = "1cc189e4991fc6b3526f7eebc9f798b8922e70d60a12ba499b6e0329eb473cea",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gzip-1.9-13.el8.x86_64.rpm",
    ],
)

rpm(
    name = "harfbuzz-0__1.7.5-3.el8.x86_64",
    sha256 = "49c652f3d967e944b9d0ad9dea63e8942626d3b9f40fde12cfb0d3e924a82053",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/harfbuzz-1.7.5-3.el8.x86_64.rpm",
    ],
)

rpm(
    name = "hwdata-0__0.314-8.16.el8.x86_64",
    sha256 = "8ade64397eb0a289c5135c0a3b7f17a927fffbe66cf811c1eda61ee8c780352f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/hwdata-0.314-8.16.el8.noarch.rpm",
    ],
)

rpm(
    name = "info-0__6.5-7.el8_5.x86_64",
    sha256 = "63f03261cc8109b2fb61002ca50c93e52acb9cfd8382d139e8de6623394051e8",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/info-6.5-7.el8_5.x86_64.rpm",
    ],
)

rpm(
    name = "ipxe-roms-qemu-0__20181214-11.git133f4c47.el8.x86_64",
    sha256 = "14640176ccf8c67c986132466915d3fa2c049076e7a2633b5d8e79cbb5e03a24",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/ipxe-roms-qemu-20181214-11.git133f4c47.el8.noarch.rpm",
    ],
)

rpm(
    name = "iso-codes-0__3.79-2.el8.x86_64",
    sha256 = "f5a0a39b40f2af0b74ec47f6a5e00f7772ac8bd347c793b7deac84d3d8d7d47a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/iso-codes-3.79-2.el8.noarch.rpm",
    ],
)

rpm(
    name = "json-c-0__0.13.1-3.el8.x86_64",
    sha256 = "5035057553b61cb389c67aa2c29d99c8e0c1677369dad179d683942ccee90b3f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/json-c-0.13.1-3.el8.x86_64.rpm",
    ],
)

rpm(
    name = "keyutils-libs-0__1.5.10-9.el8.x86_64",
    sha256 = "423329269c719b96ada88a27325e1923e764a70672e0dc6817e22eff07a9af7b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/keyutils-libs-1.5.10-9.el8.x86_64.rpm",
    ],
)

rpm(
    name = "kmod-libs-0__25-19.el8.x86_64",
    sha256 = "46a2ddc6067ed12089f04f2255c57117992807d707e280fc002f3ce786fc2abf",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/kmod-libs-25-19.el8.x86_64.rpm",
    ],
)

rpm(
    name = "krb5-libs-0__1.18.2-22.el8.x86_64",
    sha256 = "1dc1106dda34b328115dff7b2eca007dd93befb0bfa6a66c619f4b5637f6e004",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/krb5-libs-1.18.2-22.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libX11-0__1.6.8-5.el8.x86_64",
    sha256 = "2ab1fef0235ca1cafbe23ad6c9dbe3cd5d48ab99561f7e880456606a1ea78ae4",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libX11-1.6.8-5.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libX11-common-0__1.6.8-5.el8.x86_64",
    sha256 = "53760c2d7e17f31bd1f999cb448e902d4ba68eff0f99f6203d85998cd4c44918",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libX11-common-1.6.8-5.el8.noarch.rpm",
    ],
)

rpm(
    name = "libX11-xcb-0__1.6.8-5.el8.x86_64",
    sha256 = "d8d58813823c960f344bdebf4ed888b53781c81175e97badd814a86dc811b362",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libX11-xcb-1.6.8-5.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libXau-0__1.0.9-3.el8.x86_64",
    sha256 = "49d972c660b9238dd1d58ab5952285b77e440820bf4563cce2b5ecd2f6ceba78",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libXau-1.0.9-3.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libXext-0__1.3.4-1.el8.x86_64",
    sha256 = "9869db60ee2b6d8f2115937857fb0586802720a75e043baf21514011a9fa79aa",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libXext-1.3.4-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libXfixes-0__5.0.3-7.el8.x86_64",
    sha256 = "81f7df4c736963636c9ebab7441ca4f4e41a7483ef6e7b2ac0d1bf37afe52a14",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libXfixes-5.0.3-7.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libXft-0__2.3.3-1.el8.x86_64",
    sha256 = "ab754d37388e0ecb52152e41c9560392dd0d504939f850ff25d9794090f8b101",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libXft-2.3.3-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libXrender-0__0.9.10-7.el8.x86_64",
    sha256 = "11ac209220f3a53a762adebb4eeb43190e02ef7cdad2c54bcb474b206f7eb6f2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libXrender-0.9.10-7.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libXv-0__1.0.11-7.el8.x86_64",
    sha256 = "e04aeb7921dc1864379f670172c69d2e6241c0ca602b7bdee42079596910a4c3",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libXv-1.0.11-7.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libXxf86vm-0__1.1.4-9.el8.x86_64",
    sha256 = "5813a48905fafc027e4b71b8113e654f23c963a9526015ec4fd0738b68de264a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libXxf86vm-1.1.4-9.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libacl-0__2.2.53-1.el8.x86_64",
    sha256 = "4973664648b7ed9278bf29074ec6a60a9f660aa97c23a283750483f64429d5bb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libacl-2.2.53-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libaio-0__0.3.112-1.el8.x86_64",
    sha256 = "2c63399bee449fb6e921671a9bbf3356fda73f890b578820f7d926202e98a479",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libaio-0.3.112-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libattr-0__2.4.48-3.el8.x86_64",
    sha256 = "a02e1344ccde1747501ceeeff37df4f18149fb79b435aa22add08cff6bab3a5a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libattr-2.4.48-3.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libblkid-0__2.32.1-41.el8.x86_64",
    sha256 = "1db3749fae8a9d9feb1c1303fc5a217bf77415a8b9f213c01a2c41caca840211",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libblkid-2.32.1-41.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libcap-0__2.48-4.el8.x86_64",
    sha256 = "34f69bed9ae0f5ba314a62172e8cfd9cf6795cb0c3bd29f15d174fc2a0acbb5b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libcap-2.48-4.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libcap-ng-0__0.7.11-1.el8.x86_64",
    sha256 = "15c3c696ec2e21f48e951f426d3c77b53b579605b8dd89843b35c9ab9b1d7e69",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libcap-ng-0.7.11-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libcom_err-0__1.45.6-5.el8.x86_64",
    sha256 = "4e4f13acac0477f0a121812107a9939ea2164eebab052813f1618d5b7df5d87a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libcom_err-1.45.6-5.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libdatrie-0__0.2.9-7.el8.x86_64",
    sha256 = "7d43fda5ced8faf64d09cb3c47dcb6c9aa1fd936fc49f8609af29780c7a75f90",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libdatrie-0.2.9-7.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libdb-0__5.3.28-42.el8_4.x86_64",
    sha256 = "058f77432592f4337039cbb7a4e5f680020d8b85a477080c01d96a7728de6934",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libdb-5.3.28-42.el8_4.x86_64.rpm",
    ],
)

rpm(
    name = "libdrm-0__2.4.114-1.el8.x86_64",
    sha256 = "af65274314c0e0423fd6430d19f79a0f11ec3f3f23fba1c10ea7ebdf47443cc9",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libdrm-2.4.114-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libepoxy-0__1.5.8-1.el8.x86_64",
    sha256 = "a825b6169fbd3377aed37ee63114aff24ac1a0ae123710c4559a56564fb0c15a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libepoxy-1.5.8-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libfdisk-0__2.32.1-41.el8.x86_64",
    sha256 = "a7f1d907e8782bb22683bad09cc977341553cb4abb96709a13504049ee570dee",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libfdisk-2.32.1-41.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libffi-0__3.1-24.el8.x86_64",
    sha256 = "3a0b75d820053e5a75f3a9a04fa2b78a7ac559140d7ce98f0d684cd8433ece81",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libffi-3.1-24.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libgcc-0__8.5.0-19.el8.x86_64",
    sha256 = "1f4a259f12d458dbf570f42044e60e456c559981cd0a07c20b63a9864167493e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libgcc-8.5.0-19.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libgcrypt-0__1.8.5-7.el8.x86_64",
    sha256 = "01541f1263532f80114111a44f797d6a8eed75744db997e85fddd021e636c5bb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libgcrypt-1.8.5-7.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libglvnd-1__1.3.4-1.el8.x86_64",
    sha256 = "a94d8debdf9e1f20dc561baaa1c5903ef85c511f2b647092b5d8908ccfbf6a6a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libglvnd-1.3.4-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libglvnd-egl-1__1.3.4-1.el8.x86_64",
    sha256 = "0c7e300aae2f33e48ae5bedbbcf9c6b50af18477d9493075c73355c7fe080b43",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libglvnd-egl-1.3.4-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libglvnd-gles-1__1.3.4-1.el8.x86_64",
    sha256 = "77f73a543253876ab922320e48b6025b019fa0a109a43da7c1bffe7f0a096522",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libglvnd-gles-1.3.4-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libglvnd-glx-1__1.3.4-1.el8.x86_64",
    sha256 = "bf40ab7dbe4ae55fb5403204df6b9b27013898cdb450da39e8e19a2c4229aea5",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libglvnd-glx-1.3.4-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libgpg-error-0__1.31-1.el8.x86_64",
    sha256 = "845a0732d9d7a01b909124cd8293204764235c2d856227c7a74dfa0e38113e34",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libgpg-error-1.31-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libidn2-0__2.2.0-1.el8.x86_64",
    sha256 = "7e08785bd3cc0e09f9ab4bf600b98b705203d552cbb655269a939087987f1694",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libidn2-2.2.0-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libjpeg-turbo-0__1.5.3-12.el8.x86_64",
    sha256 = "94b6e9d7ebd6d3bee36ac8b5c381a305bc16158a7de5bf7b71ddf2f41f10f03c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libjpeg-turbo-1.5.3-12.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libmount-0__2.32.1-41.el8.x86_64",
    sha256 = "364df521d9f4f8c40b872d75dbedc43204d7be194e4d9e7738fbd7cce0328f1b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libmount-2.32.1-41.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libnsl2-0__1.2.0-2.20180605git4a062cf.el8.x86_64",
    sha256 = "5846c73edfa2ff673989728e9621cce6a1369eb2f8a269ac5205c381a10d327a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libnsl2-1.2.0-2.20180605git4a062cf.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libogg-2__1.3.2-10.el8.x86_64",
    sha256 = "35f80ecc7540818e702e49c13cce081bda78ac28087247acf71e6d774e6f0c3e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libogg-1.3.2-10.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libpciaccess-0__0.14-1.el8.x86_64",
    sha256 = "759386be8f49257266ac614432b762b8e486a89aac5d5f7a581a0330efb59c77",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libpciaccess-0.14-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libpng-2__1.6.34-5.el8.x86_64",
    sha256 = "cc2f054cf7ef006faf0b179701838ff8632c3ac5f45a0199a13f9c237f632b82",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libpng-1.6.34-5.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libpwquality-0__1.4.4-6.el8.x86_64",
    sha256 = "3e4fa1636aee0d9896179d63ee7045fd7927cc6cdb43e30a943b873166533bb9",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libpwquality-1.4.4-6.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libseccomp-0__2.5.2-1.el8.x86_64",
    sha256 = "4a6322832274a9507108719de9af48406ee0fcfc54c9906b9450e1ae231ede4b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libseccomp-2.5.2-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libselinux-0__2.9-8.el8.x86_64",
    sha256 = "67f7412ebbbc65ec953aa4e99489c04f821c9645fe048c3ee170040663535dc2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libselinux-2.9-8.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libsemanage-0__2.9-9.el8.x86_64",
    sha256 = "7b8293193b1dda6c408c04074c4b501faf37ff9e4a4b6cd1ca2cce81d5bb67bf",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libsemanage-2.9-9.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libsepol-0__2.9-3.el8.x86_64",
    sha256 = "f91e372ffa25c4c82ae7e001565cf5ff73048c407083493555025fdb5fc4c14a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libsepol-2.9-3.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libsigsegv-0__2.11-5.el8.x86_64",
    sha256 = "02d728cf74eb47005babeeab5ac68ca04472c643203a1faef0037b5f33710fe2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libsigsegv-2.11-5.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libsmartcols-0__2.32.1-41.el8.x86_64",
    sha256 = "fb4d4e3ba3c21fc45153dc761af5825aca4bab3bb2fb3f83b66162f56fca2df7",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libsmartcols-2.32.1-41.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libstdc__plus____plus__-0__8.5.0-19.el8.x86_64",
    sha256 = "8df0651fa1446827da80d42b8bda19bf29614fc68cd59db4df3659d84764fcf0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libstdc++-8.5.0-19.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libtasn1-0__4.13-4.el8.x86_64",
    sha256 = "ed93dccf7bf6d8540d825f0021b64164e006ef1c84ba9908d5c57cbb0aef2d8a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libtasn1-4.13-4.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libthai-0__0.1.27-2.el8.x86_64",
    sha256 = "91bbf9cd7d7ae62682a3d24a889512daef57c3c4b41866336c42af6361702fef",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libthai-0.1.27-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libtheora-1__1.1.1-21.el8.x86_64",
    sha256 = "c69987e10c401be766c0a73ade99478d69bad4a2b10688ce9e80295f3f9dae26",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libtheora-1.1.1-21.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libtirpc-0__1.1.4-8.el8.x86_64",
    sha256 = "bcade31f01063824b3a3e77218caaedd16532413282978c437c82b81c2991e4e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libtirpc-1.1.4-8.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libunistring-0__0.9.9-3.el8.x86_64",
    sha256 = "20bb189228afa589141d9c9d4ed457729d13c11608305387602d0b00ed0a3093",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libunistring-0.9.9-3.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libusbx-0__1.0.23-4.el8.x86_64",
    sha256 = "7e704756a93f07feec345a9748204e78994ce06a4667a2ef35b44964ff754306",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libusbx-1.0.23-4.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libutempter-0__1.1.6-14.el8.x86_64",
    sha256 = "c8c54c56bff9ca416c3ba6bccac483fb66c81a53d93a19420088715018ed5169",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libutempter-1.1.6-14.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libuuid-0__2.32.1-41.el8.x86_64",
    sha256 = "40eed6f37047a0b5139ad5be026dce6a9c2d4ed81f694461a32ee53fb370b14c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libuuid-2.32.1-41.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libverto-0__0.3.2-2.el8.x86_64",
    sha256 = "96b8ea32c5e9b3275788525ecbf35fd6ac1ae137754a2857503776512d4db58a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libverto-0.3.2-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libvisual-1__0.4.0-25.el8.x86_64",
    sha256 = "3a95e5f7b43313656f7b5a4798315355457cca2b120a8cfb1883628160fd77c8",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libvisual-0.4.0-25.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libvorbis-1__1.3.6-2.el8.x86_64",
    sha256 = "5349766076fcd168287f116b023caa93d451243663b00a5ca5991f74067bf7af",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libvorbis-1.3.6-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libwayland-client-0__1.21.0-1.el8.x86_64",
    sha256 = "bf1b7055999f0961fcd23fb29d07678c9d6bf1f9c57f42b06b6237b84a3f5aa9",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libwayland-client-1.21.0-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libwayland-cursor-0__1.21.0-1.el8.x86_64",
    sha256 = "ed32158e75e2f3decf8089f5de5dbdf21915c881293a795f5e77cfba3d3af403",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libwayland-cursor-1.21.0-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libwayland-egl-0__1.21.0-1.el8.x86_64",
    sha256 = "aa7b2f9d27c75f0844bdbcd02c325aafb79756f1b422fd8d6c229afd4c9c79ad",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libwayland-egl-1.21.0-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libwayland-server-0__1.21.0-1.el8.x86_64",
    sha256 = "86b1b725f8b725706cbad9d44d0c896a52b249b3e7b556814128dabc03cef023",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libwayland-server-1.21.0-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libxcb-0__1.13.1-1.el8.x86_64",
    sha256 = "0221e6e3671c2bd130e9519a7b352404b7e510584b4707d38e1a733e19c7f74f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libxcb-1.13.1-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libxcrypt-0__4.1.1-6.el8.x86_64",
    sha256 = "645853feb85c921d979cb9cf9109663528429eda63cf5a1e31fe578d3d7e713a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libxcrypt-4.1.1-6.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libxkbcommon-0__0.9.1-1.el8.x86_64",
    sha256 = "e03d462995326a4477dcebc8c12eae3c1776ce2f095617ace253c0c492c89082",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libxkbcommon-0.9.1-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libxml2-0__2.9.7-16.el8.x86_64",
    sha256 = "65d7bffcef57650a109b44992b4b15fa554ce865a0eb21d5ede2aa39f62d4e00",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libxml2-2.9.7-16.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libxshmfence-0__1.3-2.el8.x86_64",
    sha256 = "bfb818e14cfa05d800f1131366ee8fd0c30ab0c735470c870e62dabb7d3f1073",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libxshmfence-1.3-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "libzstd-0__1.4.4-1.el8.x86_64",
    sha256 = "7c2dc6044f13fe4ae04a4c1620da822a6be591b5129bf68ba98a3d8e9092f83b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libzstd-1.4.4-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "llvm-libs-0__15.0.7-1.module_el8.8.0__plus__1258__plus__af79b238.x86_64",
    sha256 = "260a2fb6c03e2bf0f3ddcc62cb12ad8185e2220e285a1983e610882a2f2debe7",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/llvm-libs-15.0.7-1.module_el8.8.0+1258+af79b238.x86_64.rpm",
    ],
)

rpm(
    name = "lz4-libs-0__1.8.3-3.el8_4.x86_64",
    sha256 = "8ecac05bb0ec99f91026f2361f7443b9be3272582193a7836884ec473bf8f423",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/lz4-libs-1.8.3-3.el8_4.x86_64.rpm",
    ],
)

rpm(
    name = "mesa-dri-drivers-0__22.3.0-2.el8.x86_64",
    sha256 = "8f361399e829628e118cdea5abfe4866bf4231989aa5161de94e7386a949b7fd",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/mesa-dri-drivers-22.3.0-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "mesa-filesystem-0__22.3.0-2.el8.x86_64",
    sha256 = "0a8486d6b1e779503838ba2b2e2e4fb33449b5c51ed275f1332f32fa674722f9",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/mesa-filesystem-22.3.0-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "mesa-libEGL-0__22.3.0-2.el8.x86_64",
    sha256 = "921ea537cec9c3a1caf043ac90d6504634baf27a9fdd4452d3961ef32469d28e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/mesa-libEGL-22.3.0-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "mesa-libGL-0__22.3.0-2.el8.x86_64",
    sha256 = "225ca265a7e744d75a119eb8fa350a547fd78c208facb361e3bb04dd23cf276e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/mesa-libGL-22.3.0-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "mesa-libgbm-0__22.3.0-2.el8.x86_64",
    sha256 = "70b97e6e7d1757bab59eeda0c2bb4e1ff3b59c53f7be510886268a7c602c6e8c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/mesa-libgbm-22.3.0-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "mesa-libglapi-0__22.3.0-2.el8.x86_64",
    sha256 = "f83188044e8b760ec3acc5f734ee559b1a3cfe4279d8c9ad3f0c8f17dd5ff3c6",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/mesa-libglapi-22.3.0-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "mpfr-0__3.1.6-1.el8.x86_64",
    sha256 = "e7f0c34f83c1ec2abb22951779e84d51e234c4ba0a05252e4ffd8917461891a5",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/mpfr-3.1.6-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "ncurses-base-0__6.1-9.20180224.el8.x86_64",
    sha256 = "41716536ea16798238ac89fbc3041b3f9dc80f9a64ea4b19d6e67ad2c909269a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/ncurses-base-6.1-9.20180224.el8.noarch.rpm",
    ],
)

rpm(
    name = "ncurses-libs-0__6.1-9.20180224.el8.x86_64",
    sha256 = "54609dd070a57a14a6103f0c06bea99bb0a4e568d1fbc6a22b8ba67c954d90bf",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/ncurses-libs-6.1-9.20180224.el8.x86_64.rpm",
    ],
)

rpm(
    name = "nettle-0__3.4.1-7.el8.x86_64",
    sha256 = "fe9a848502c595e0b7acc699d69c24b9c5ad0ac58a0b3933cd228f3633de31cb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/nettle-3.4.1-7.el8.x86_64.rpm",
    ],
)

rpm(
    name = "openssl-libs-1__1.1.1k-9.el8.x86_64",
    sha256 = "fd158669c52fd8df76e2902eee3719b866e3129dc19ba8c96e2439b9b892a778",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/openssl-libs-1.1.1k-9.el8.x86_64.rpm",
    ],
)

rpm(
    name = "opus-0__1.3-0.4.beta.el8.x86_64",
    sha256 = "00512c56e8931eb0ab52de91d0272f00bf904d6f2042b580115edd7eb4a42df2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/opus-1.3-0.4.beta.el8.x86_64.rpm",
    ],
)

rpm(
    name = "orc-0__0.4.28-3.el8.x86_64",
    sha256 = "7552ad64b02a15a3b91524f9858afeb228ef45148204539ad33524f7d7bc5c67",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/orc-0.4.28-3.el8.x86_64.rpm",
    ],
)

rpm(
    name = "p11-kit-0__0.23.22-1.el8.x86_64",
    sha256 = "6a67c8721fe24af25ec56c6aae956a190d8463e46efed45adfbbd800086550c7",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/p11-kit-0.23.22-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "p11-kit-trust-0__0.23.22-1.el8.x86_64",
    sha256 = "d218619a4859e002fe677703bc1767986314cd196ae2ac397ed057f3bec36516",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/p11-kit-trust-0.23.22-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "pam-0__1.3.1-25.el8.x86_64",
    sha256 = "1dd647b181f70dfa8a3e742a9942f3b134c17a721f890057b756691f2389333c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/pam-1.3.1-25.el8.x86_64.rpm",
    ],
)

rpm(
    name = "pango-0__1.42.4-8.el8.x86_64",
    sha256 = "1e74c391edf2f383b5c236e65ddd15bcf83883975b8d08b70808d2e14916d496",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/pango-1.42.4-8.el8.x86_64.rpm",
    ],
)

rpm(
    name = "pcre-0__8.42-6.el8.x86_64",
    sha256 = "876e9e99b0e50cb2752499045bafa903dd29e5c491d112daacef1ae16f614dad",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/pcre-8.42-6.el8.x86_64.rpm",
    ],
)

rpm(
    name = "pcre2-0__10.32-3.el8.x86_64",
    sha256 = "2f865747024d26b91d5a9f2f35dd1b04e1039d64e772d0371b437145cd7beceb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/pcre2-10.32-3.el8.x86_64.rpm",
    ],
)

rpm(
    name = "pixman-0__0.38.4-2.el8.x86_64",
    sha256 = "e496740940bd0b4d6f6537feaaffff57580624f6629c736c7f5e415259dc6cbe",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/pixman-0.38.4-2.el8.x86_64.rpm",
    ],
)

rpm(
    name = "platform-python-0__3.6.8-51.el8.x86_64",
    sha256 = "9958ab63b5f061c9b1e2c3cfd4d0f26166a2abb0914a8c556be7d7159063905c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/platform-python-3.6.8-51.el8.x86_64.rpm",
    ],
)

rpm(
    name = "platform-python-setuptools-0__39.2.0-7.el8.x86_64",
    sha256 = "e7b5b0904239cf0eaed16cbec17825fee9465c700de385a1ceb87db671c4bce7",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/platform-python-setuptools-39.2.0-7.el8.noarch.rpm",
    ],
)

rpm(
    name = "popt-0__1.18-1.el8.x86_64",
    sha256 = "3fc009f00388e66befab79be548ff3c7aa80ca70bd7f183d22f59137d8e2c2ae",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/popt-1.18-1.el8.x86_64.rpm",
    ],
)

rpm(
    name = "python3-libs-0__3.6.8-51.el8.x86_64",
    sha256 = "19f1ab05fbb9723793e263a5e5e5bb2f03cb88e67ef672310cb7abf1cc2c8d0b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/python3-libs-3.6.8-51.el8.x86_64.rpm",
    ],
)

rpm(
    name = "python3-pip-wheel-0__9.0.3-22.el8.x86_64",
    sha256 = "772093492e290af496c3c8d4cf1d83d3288af49c4f0eb550f9c2489f96ecd89d",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/python3-pip-wheel-9.0.3-22.el8.noarch.rpm",
    ],
)

rpm(
    name = "python3-setuptools-wheel-0__39.2.0-7.el8.x86_64",
    sha256 = "202a208dc9390ef3fd1528100fb80059970cfcc2698b5aaa8896f710d30b61e0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/python3-setuptools-wheel-39.2.0-7.el8.noarch.rpm",
    ],
)

rpm(
    name = "qemu-kvm-common-15__6.2.0-28.module_el8.8.0__plus__1257__plus__0c3374ae.x86_64",
    sha256 = "ab137d5fd417ec712cc4b5e97b274b9bf5b7b8cc9a39220244b77b5f357aba84",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/qemu-kvm-common-6.2.0-28.module_el8.8.0+1257+0c3374ae.x86_64.rpm",
    ],
)

rpm(
    name = "qemu-kvm-ui-opengl-15__6.2.0-28.module_el8.8.0__plus__1257__plus__0c3374ae.x86_64",
    sha256 = "ab87203abe2e1fa456a15f21fbf29fb868ee1083e139e15d54b522d58dbea46e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/qemu-kvm-ui-opengl-6.2.0-28.module_el8.8.0+1257+0c3374ae.x86_64.rpm",
    ],
)

rpm(
    name = "qemu-kvm-ui-spice-15__6.2.0-28.module_el8.8.0__plus__1257__plus__0c3374ae.x86_64",
    sha256 = "59705fa6c0f45c56670ffe7061efab91b37138e07b10c5d66cd4a26d15597c06",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/qemu-kvm-ui-spice-6.2.0-28.module_el8.8.0+1257+0c3374ae.x86_64.rpm",
    ],
)

rpm(
    name = "readline-0__7.0-10.el8.x86_64",
    sha256 = "fea868a7d82a7b6f392260ed4afb472dc4428fd71eab1456319f423a845b5084",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/readline-7.0-10.el8.x86_64.rpm",
    ],
)

rpm(
    name = "seabios-bin-0__1.16.0-3.module_el8.7.0__plus__1218__plus__f626c2ff.x86_64",
    sha256 = "92edef92725941ce3a90551380ff0792486e8a2f11e6ceacbf420bbc12460ab3",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/seabios-bin-1.16.0-3.module_el8.7.0+1218+f626c2ff.noarch.rpm",
    ],
)

rpm(
    name = "seavgabios-bin-0__1.16.0-3.module_el8.7.0__plus__1218__plus__f626c2ff.x86_64",
    sha256 = "00156d667665c88c1e87d913d966a070d9eee2c7609f99e98d43758b75d19ee8",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/seavgabios-bin-1.16.0-3.module_el8.7.0+1218+f626c2ff.noarch.rpm",
    ],
)

rpm(
    name = "sed-0__4.5-5.el8.x86_64",
    sha256 = "5a09d6d967d12580c7e6ab92db35bcafd3426d6121ec60c78f54e3cd4961cd26",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/sed-4.5-5.el8.x86_64.rpm",
    ],
)

rpm(
    name = "setup-0__2.12.2-9.el8.x86_64",
    sha256 = "0a0696aebfadbbeb229445c0828a83be763460d6af6a552b3bd533acde011644",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/setup-2.12.2-9.el8.noarch.rpm",
    ],
)

rpm(
    name = "sgabios-bin-1__0.20170427git-3.module_el8.6.0__plus__983__plus__a7505f3f.x86_64",
    sha256 = "79675eae8221b4abd2ef195328fc9b2c27b7f6e901ed65ac11b93f0637033b2f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/sgabios-bin-0.20170427git-3.module_el8.6.0+983+a7505f3f.noarch.rpm",
    ],
)

rpm(
    name = "shadow-utils-2__4.6-17.el8.x86_64",
    sha256 = "fb3c71778fc23c4d3c91911c49e0a0d14c8a5192c431fc9ba07f2a14c938a172",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/shadow-utils-4.6-17.el8.x86_64.rpm",
    ],
)

rpm(
    name = "spice-server-0__0.14.3-4.el8.x86_64",
    sha256 = "1dea958ebe37b61062fd7313234b41628ad68de34dd1b615df3f42b7975ecb6b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/spice-server-0.14.3-4.el8.x86_64.rpm",
    ],
)

rpm(
    name = "sqlite-libs-0__3.26.0-17.el8.x86_64",
    sha256 = "a44b1bd3d9f5a6b0654ba4ae2f8aa45aefec54c9377dfe4446ec1c0e2fd0ac89",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/sqlite-libs-3.26.0-17.el8.x86_64.rpm",
    ],
)

rpm(
    name = "systemd-0__239-75.el8.x86_64",
    sha256 = "525b39cb098b102229a6f6e3689aa2165f1a92ab9e3d143344c0bd961d67aa16",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/systemd-239-75.el8.x86_64.rpm",
    ],
)

rpm(
    name = "systemd-libs-0__239-75.el8.x86_64",
    sha256 = "077ae07a7a4266ad4358450ef4924e85e97e6649597580d49b220db560e94154",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/systemd-libs-239-75.el8.x86_64.rpm",
    ],
)

rpm(
    name = "systemd-pam-0__239-75.el8.x86_64",
    sha256 = "a6641597a33e17b0a00baa5e970f653c2ebf05a92d6ed8c8694e03f548d37fb6",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/systemd-pam-239-75.el8.x86_64.rpm",
    ],
)

rpm(
    name = "tzdata-0__2023c-1.el8.x86_64",
    sha256 = "804a7267d6e2076a5d64d0ce22528b86d2a1d7501173858e95df1c7428ce62f3",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/tzdata-2023c-1.el8.noarch.rpm",
    ],
)

rpm(
    name = "userspace-rcu-0__0.10.1-4.el8.x86_64",
    sha256 = "4025900345c5125fd6c10c1780275139f56b63be2bfac10be83628758c225dd0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/userspace-rcu-0.10.1-4.el8.x86_64.rpm",
    ],
)

rpm(
    name = "util-linux-0__2.32.1-41.el8.x86_64",
    sha256 = "499d387bbdd805b2fb6ff05dbcf779f4ffef6b68c6610e49cda78b55071e460a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/util-linux-2.32.1-41.el8.x86_64.rpm",
    ],
)

rpm(
    name = "xkeyboard-config-0__2.28-1.el8.x86_64",
    sha256 = "a2aeabb3962859069a78acc288bc3bffb35485428e162caafec8134f5ce6ca67",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/xkeyboard-config-2.28-1.el8.noarch.rpm",
    ],
)

rpm(
    name = "xml-common-0__0.6.3-50.el8.x86_64",
    sha256 = "6d7676847b3c0dbac22983c85c0a419af43029cc3b8ff5dc26c9f85174fc85d8",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/xml-common-0.6.3-50.el8.noarch.rpm",
    ],
)

rpm(
    name = "xz-libs-0__5.2.4-4.el8.x86_64",
    sha256 = "69d67ea8b4bd532f750ff0592f0098ace60470da0fd0e4056188fda37a268d42",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/xz-libs-5.2.4-4.el8.x86_64.rpm",
    ],
)

rpm(
    name = "zlib-0__1.2.11-21.el8.x86_64",
    sha256 = "9aabeb4a75c05b98661200dc9f0f1c7c528af42b9535c7c133dd4c0c5f80d179",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/zlib-1.2.11-21.el8.x86_64.rpm",
    ],
)
