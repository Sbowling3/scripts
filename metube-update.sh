#!/bin/bash
systemctl stop metube
docker pull ghcr.io/alexta69/metube:latest
systemctl start metube
