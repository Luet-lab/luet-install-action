#!/bin/bash

set -ex

docker rm luet || true
docker run --name luet quay.io/luet/base:"$LUET_TAG" && docker cp luet:/usr/bin/luet ./
docker rm luet || true
chmod +x luet
sudo mv luet /usr/bin/luet
sudo mkdir -p /etc/luet/repos.conf.d/
sudo luet repo add -y kairos --url "$REPOSITORY" --type "$REPOSITORY_TYPE"
LUET_NOLOCK=true sudo -E luet install -y "$PACKAGES"
