# DevOS

![devOS](/media/devOS-green.png)
DevOS is a Debian-based Linux distribution focused on development use cases.

## Overview

DevOS is built using [live-build](https://wiki.debian.org/DebianLive/LiveBuild). It provides a base Debian system with development tools and a pre-configured desktop environment.

## Prerequisites

- Linux host system (DevOS does **not** work on WSL/Windows Subsystem for Linux)
- `live-build` installed (`sudo apt install live-build`)
- Supported architecture: **AMD64 only**

## Build Instructions

Open a terminal and run:

```bash
sudo apt update
sudo apt install live-build

lb config --debian-installer live \
  --distribution trixie \
  --archive-areas "main contrib non-free non-free-firmware" \
  --bootappend-live "boot=live components username=devos" \
  --iso-volume "DevOS" \
  --iso-publisher "DorianFigueiras" \
  --iso-application "DevOS" \
  --debian-installer-gui true \
  --bootappend-live "boot=live components hostname=devos"

lb build
```

This will generate an ISO image you can flash to a USB drive or use in a virtual machine.

## Features

- Based on Debian Trixie
- Includes development tools
- Includes additional non-free firmware for hardware compatibility
- Pre-configured desktop environment with custom appearance (themes, icons, etc.)

## Include 

- Gnome 48
- [Blur my shell](https://github.com/aunetx/blur-my-shell) Gnome Extension
- [Dash to dock](https://github.com/micheleg/dash-to-dock) Gnome Extension
- [Just Perfection](https://gitlab.gnome.org/jrahmatzadeh/just-perfection) Gnome Extension
