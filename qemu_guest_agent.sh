#!/bin/bash
#Enable QEMU Guest Agent in ProxMox VM under options.

apt install qemu-guest-agent
systemctl enable qemu-guest-agent
systemctl start qemu-guest-agent

#Completely shutdown VM and start back up. DO not reboot, do a shutdown.
#Now confirm IP address shows up in the summary section of the VM in ProxMox.
