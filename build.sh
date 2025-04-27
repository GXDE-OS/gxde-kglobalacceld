#!/bin/bash
pushd $(dirname $0)
rm -vfr pkg
mkdir -p pkg/usr/share/gxde-k9/edging
cat > pkg/usr/share/gxde-k9/edging/gxde-kglobalacceld.edging << EOF
# 目标程序路径（需要运行的可执行文件或命令）
TARGET_PROCESS="/usr/lib/$(dpkg-architecture -q DEB_HOST_GNU_TYPE)/libexec/kglobalacceld"
DONT_RUN_IF_SYSTEMD_EXIST=""

EOF

popd