#!/usr/bin/env bash

set -eux

BUILD_DIR="build"
mkdir -p BUILD_DIR
rm $BUILD_DIR/*.yaml

kustomize build argocd-apps/overlays/sugardon01 -o=$BUILD_DIR
kustomize build eventlisteners -o=$BUILD_DIR
kustomize build pipelinesascode -o=$BUILD_DIR
kustomize build setup -o=$BUILD_DIR
kustomize build tasks -o=$BUILD_DIR
kustomize build triggertemplates -o=$BUILD_DIR
kustomize build triggerbindings -o=$BUILD_DIR
kustomize build configs -o=$BUILD_DIR
# overlays
kustomize build ingress/overlays/development -o=$BUILD_DIR
kustomize build pipelines/overlays/development -o=$BUILD_DIR
kustomize build rbac/overlays/development -o=$BUILD_DIR
kustomize build storages/overlays/development -o=$BUILD_DIR
