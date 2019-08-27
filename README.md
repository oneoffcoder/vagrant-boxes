# Purpose

A vagrant box with

* Docker (latest)
* Miniconda v3 with Python 3.7
* OpenJDK v1.8
* Maven v3.6.1
* Ant v1.9.14
* SBT v1.2.8
* Node v12.9.1

# Use

To bring up.

```bash
vagrant up
```

To shutdown.

```bash
vagrant halt
```

To destroy.

```bash
vagrant destroy -f
```

To SSH into the VM. The login/password is `vagrant/vagrant`.

```bash
vagrant ssh
```

To package.

```bash
vagrant package
```

To publish.

```bash
vagrant cloud publish \
    oneoffcoder/development \
    0.0.1 \
    virtualbox \
    package.box \
    --description "Ubuntu 19.04 Desktop with Java, Scala, Python, Node and Docker" \
    --force \
    --release
```
