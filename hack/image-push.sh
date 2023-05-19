#!/usr/bin/env bash

#BUILD_ARCHS=(${BUILD_ARCHS:-amd64 arm64})
BUILD_ARCHS=(${BUILD_ARCHS:-amd64})
BAZEL=${BAZEL:-bazel}

for arch in "${BUILD_ARCHS[@]}"; do
  ${BAZEL} run --config="${arch}" \
    --define SOURCE_REGISTRY=${SOURCE_REGISTRY} --define SOURCE_REPOSITORY=${SOURCE_REPOSITORY} --define SOURCE_TAG=${SOURCE_TAG} \
    --define TARGET_REGISTRY=${TARGET_REGISTRY} --define TARGET_REPOSITORY=${TARGET_REPOSITORY} --define TARGET_TAG=${TARGET_TAG} \
    --define ARCH=${arch} \
    //:image-push

  rm -rf "${arch}"
  mkdir -p "${arch}"

  for f in $(find bazel-bin/ -name '*.digest'); do
    dir="${arch}"/$(dirname "${f}")
    mkdir -p "${dir}"
    cp -f "${f}" "${dir}"/$(basename "${f}")
  done
done

MANIFEST_IMAGES=""
for arch in "${BUILD_ARCHS[@]}"; do
  digest=$(cat ${arch}/bazel-bin/image-push.digest)
  MANIFEST_IMAGES="${MANIFEST_IMAGES} --amend ${TARGET_REGISTRY}/${TARGET_REPOSITORY}:${TARGET_TAG}-${arch}"
done

echo docker manifest create ${TARGET_REGISTRY}/${TARGET_REPOSITORY}:${TARGET_TAG} ${MANIFEST_IMAGES}
docker manifest create ${TARGET_REGISTRY}/${TARGET_REPOSITORY}:${TARGET_TAG} ${MANIFEST_IMAGES}
docker manifest push ${TARGET_REGISTRY}/${TARGET_REPOSITORY}:${TARGET_TAG}
