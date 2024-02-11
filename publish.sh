#!/bin/bash

formula=./Formula/docker-color-output.rb

echo "👌 Go to Taps" && \
cd /usr/local/Homebrew/Library/Taps/dldash/homebrew-core && \

echo "👌 Downloading the latest release from GitHub..." && \
latest_release=$(curl -s https://api.github.com/repos/devemio/docker-color-output/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/') && \
wget -q https://github.com/devemio/docker-color-output/archive/refs/tags/$latest_release.tar.gz && \
echo "👌 Release [0;36m$latest_release[0m downloaded" && \

sha256=$(shasum -a 256 "$latest_release.tar.gz" | awk '{print $1}') && \
echo "👌 SHA256 [0;36m$sha256[0m calculated" && \

sed -i '' -E "s/^  url \"(.+)\"/  url \"https:\/\/github.com\/devemio\/docker-color-output\/archive\/refs\/tags\/$latest_release.tar.gz\"/g" $formula && \
sed -i '' -E "s/^  sha256 \"(.+)\"/  sha256 \"$sha256\"/g" $formula && \
echo "👌 Formula updated" && \

rm "$latest_release.tar.gz" && \
echo "👌 Release removed" && \

git add . && git commit -m "$latest_release" -q && git push -q && \
echo "👌 Release published"