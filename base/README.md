# Purpose

A [Packer](https://www.packer.io/) project to create an Ubuntu Desktop v19.04 x64 VirtualBox image. 

```bash
packer build ubuntu-16.04-x64.json
```

To publish.

```bash
# login
vagrant cloud auth login
# whoami
vagrant cloud auth whoami

# publish
vagrant cloud publish \
    oneoffcoder/ubuntu-desktop-19.04-x86-base \
    0.0.1 \
    virtualbox \
    builds/ubuntu-desktop-19.04-x64.virtualbox.box \
    --description "Ubuntu 19.04 Desktop" \
    --force \
    --release
```