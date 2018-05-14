#!/bin/bash -e

on_chroot << EOF
# loraserver
rm -f /etc/apt/sources.list.d/loraserver.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1CE2AFD36DBCCA00
echo "deb https://repos.loraserver.io/debian stretch testing" | sudo tee /etc/apt/sources.list.d/loraserver.list

apt-get update
EOF
