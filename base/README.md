# Purpose

A [Packer](https://www.packer.io/) project to create an Ubuntu Desktop v19.04 x64 VirtualBox image. 

```bash
packer build ubuntu-desktop-19.04-x64.json
```

To add as a box locally.

```bash
vagrant box add \
    builds/ubuntu-desktop-19.04-x64.virtualbox.box \
    --name ubuntu-desktop-19.04-x86-base
```

To create a VM instance against local box.

```bash
vagrant init ubuntu-desktop-19.04-x86-base
vagrant up
```

To remove local box.
```bash
vagrant box remove ubuntu-desktop-19.04-x86-base
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