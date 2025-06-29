#!/bin/bash

# Create the user devos
useradd -m -s /bin/bash devos
echo "devos:devos" | chpasswd

# Set devos to have sudo privileges
echo "devos ALL=(ALL) ALL" > /etc/sudoers.d/devos
chmod 0440 /etc/sudoers.d/devos

# Make devos autologin on tty1
mkdir -p /etc/systemd/system/getty@tty1.service.d
cat > /etc/systemd/system/getty@tty1.service.d/override.conf <<EOF
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin devos --noclear %I \$TERM
EOF
