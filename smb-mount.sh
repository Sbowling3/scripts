#!/bin/bash
echo -n "Enter the SMB Server Address (e.g. 10.10.10.1/custom/path): "
read -r smb_address
echo -n "Enter username: "
read -r usernmae
echo -n "Enter mount path (e.g. /mnt/share): "
read -r mount_path
mount -t cifs "//$smb_address" "$mount_path" -o username="$username"
