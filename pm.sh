# Disable power management at boot for the wifi card (useful for rtw89 cards)

#!/bin/bash

wifi_card_name="wlan0"

sudo tee /etc/systemd/system/wif-powersave-off.service > /dev/null <<EOF
[Unit]
Description=Disable WiFi power saving
After=network.target

[Service]
Type=oneshot
ExecStartPre=/bin/sleep 20
ExecStart=/usr/sbin/iw dev $wifi_card_name set power_save off
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable --now wifi-powersave-off
