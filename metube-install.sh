#!/bin/bash
apt install docker.io
systemctl start docker
systemctl enable docker
usermod -aG docker ad
cat <<EOF > "/etc/systemd/system/metube.service" 
[Unit]
Description=MeTube Docker Service
Requires=docker.service
After=docker.service

[Service]
Restart=always
ExecStart=/usr/bin/docker run --rm \
  --name metube \
  --network host \
  -v /home/ad/Downloads:/downloads \
  -e UID=1000 \
  -e GID=1000 \
  -e BASIC_AUTH=true \
  -e BASIC_AUTH_USERNAME=user \
  -e BASIC_AUTH_PASSWORD=Password \
  -e YTDLP_OPTIONS=--legacy-server-connect \
  ghcr.io/alexta69/metube
ExecStop=/usr/bin/docker stop metube

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable metube.service
systemctl start metube.service
