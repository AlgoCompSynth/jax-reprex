#! /usr/bin/env -S  bash -l
podman build \
  --device nvidia.com/gpu=all \
  --dns 8.8.8.8 \
  --tag jax-test \
  --squash-all \
  . \
  2>&1 | tee jax-test.log
