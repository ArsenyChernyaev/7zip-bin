#!/usr/bin/env /bin/sh
set -e

clang_version=5.0.1

apk update
apk add curl bzip2 yasm make g++ clang

mkdir -p /tmp/7z
cd /tmp/7z
curl -L http://downloads.sourceforge.net/project/p7zip/p7zip/16.02/p7zip_16.02_src_all.tar.bz2 | tar -xj -C . --strip-components 1

make -j4

mv bin/7za /project/7za
