BAZEL ?= bazelisk

TARGET_REGISTRY ?= hub.expvent.com.cn:1111
TARGET_REPOSITORY ?= public/virt-launcher
TARGET_TAG ?= v1.0.1-alpha.0

SOURCE_REGISTRY ?= quay.io
SOURCE_REPOSITORY ?= kubevirt/virt-launcher
SOURCE_TAG ?= v1.0.0-alpha.0

.PHONY: default
default: image

.PHONY: rpm-deps
rpm-deps: source-fetch
	 ${BAZEL} run //:bazeldnf -- rpmtree -a x86_64 --nobest \
	 --name qemu-kvm-x86_64 qemu-kvm-15:6.2.0-28.module_el8.8.0+1257+0c3374ae \
	 --basesystem centos-stream-release  --repofile rpm/repo.yaml --force-ignore-with-dependencies '^glibc*'
	 ${BAZEL} run //:bazeldnf -- rpmtree -a aarch64 --nobest \
 	--name qemu-kvm-aarch64 qemu-kvm-15:6.2.0-28.module_el8.8.0+1257+0c3374ae \
	--basesystem centos-stream-release  --repofile rpm/repo.yaml --force-ignore-with-dependencies '^glibc*'

.PHONY: source-fetch
source-fetch:
	${BAZEL} run //:bazeldnf -- fetch --repofile rpm/repo.yaml

.PHONY: push
push:
	SOURCE_REGISTRY=$(SOURCE_REGISTRY) SOURCE_REPOSITORY=$(SOURCE_REPOSITORY) SOURCE_TAG=$(SOURCE_TAG) \
	TARGET_REGISTRY=$(TARGET_REGISTRY) TARGET_REPOSITORY=$(TARGET_REPOSITORY) TARGET_TAG=$(TARGET_TAG) \
	hack/image-push.sh

