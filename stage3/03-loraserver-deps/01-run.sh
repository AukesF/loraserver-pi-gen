#!/bin/bash -e

install -m 644 files/create-loraserver-db.service   ${ROOTFS_DIR}/lib/systemd/system/

on_chroot << EOF

systemctl enable postgresql
systemctl enable redis-server
systemctl enable mosquitto
systemctl enable create-loraserver-db

EOF
