# Disable any power management done to the rtw89 card

#!/bin/bash

sudo tee /usr/lib/modprobe.d/70-rtw89.conf > /dev/null <<EOF
options rtw89_pci disable_clkreq=y disable_aspm_l1=y disable_aspm_l1ss=y
EOF
