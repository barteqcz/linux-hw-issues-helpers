# Disable the GRUB timeout (set to 0)

#!/bin/bash

sudo sed -i 's/^#\?GRUB_TIMEOUT=.*/GRUB_TIMEOUT=0/' /etc/default/grub
