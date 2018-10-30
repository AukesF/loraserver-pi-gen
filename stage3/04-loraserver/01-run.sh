#!/bin/bash -e

install -m 644 files/lora-gateway-bridge.toml ${ROOTFS_DIR}/etc/lora-gateway-bridge
install -m 644 files/loraserver.toml          ${ROOTFS_DIR}/etc/loraserver
install -m 644 files/lora-app-server.toml     ${ROOTFS_DIR}/etc/lora-app-server

on_chroot << EOF

systemctl enable lora-gateway-bridge
systemctl enable lora-app-server
systemctl enable loraserver

EOF
