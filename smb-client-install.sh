#!/bin/bash
apt install cifs-utils -y
mkdir /mnt/share
chown -R ad:ad /mnt/share
chmod -R 755 /mnt/share
