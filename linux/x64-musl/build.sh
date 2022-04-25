#!/usr/bin/env /bin/sh
set -e

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -rf /tmp/7z-linux
mkdir /tmp/7z-linux
cp "$BASEDIR/do-build.sh" /tmp/7z-linux/do-build.sh
docker run --rm -v /tmp/7z-linux:/project alpine:3.8 /project/do-build.sh

cp /tmp/7z-linux/7za 7za
