BAZEL ?= bazelisk

.PHONY: rpm-deps
rpm-deps:
#	 bazelisk run //:bazeldnf -- rpmtree -a aarch64 --nobest \
#	 	--name spice-ui-aarch64 qemu-kvm-ui-spice-15:6.2.0-28.module_el8.8.0+1257+0c3374ae \
#	 	--basesystem centos-stream-release  --repofile rpm/repo.yaml
#	 ${BAZEL} run //:bazeldnf -- rpmtree -a x86_64 --nobest \
#     	 	--name spice-ui-x86_64 qemu-kvm-ui-spice-15:6.2.0-28.module_el8.8.0+1257+0c3374ae \
#     	 	--basesystem centos-stream-release  --repofile rpm/repo.yaml --force-ignore-with-dependencies '^glibc*'
	 ${BAZEL} run //:bazeldnf -- rpmtree -a x86_64 --nobest \
	 --name qemu-kvm-x86_64 qemu-kvm-15:6.2.0-28.module_el8.8.0+1257+0c3374ae \
	 --basesystem centos-stream-release  --repofile rpm/repo.yaml
	 ${BAZEL} run //:bazeldnf -- rpmtree -a aarch64 --nobest \
 	--name qemu-kvm-aarch64 qemu-kvm-15:6.2.0-28.module_el8.8.0+1257+0c3374ae \
	--basesystem centos-stream-release  --repofile rpm/repo.yaml



.PHONY: source-fetch
source-fetch:
	${BAZEL} run //:bazeldnf -- fetch --repofile rpm/repo.yaml

.PHONY: image
image:
	${BAZEL} run //:image

.PHONY: image-push
image-push:
	${BAZEL} run //:image-push

