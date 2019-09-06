# Purpose

A [vagrant box](https://app.vagrantup.com/oneoffcoder/boxes/development) with

* Docker (latest)
* Miniconda v3 with Python 3.7
* OpenJDK v1.8
* Maven v3.6.1
* Ant v1.9.14
* SBT v1.2.8
* Node v12.9.1
* VS Code (latest)

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
# login
vagrant cloud auth login
# whoami
vagrant cloud auth whoami

# publish
vagrant cloud publish \
    oneoffcoder/development \
    0.0.2 \
    virtualbox \
    package.box \
    --description "Ubuntu 19.04 Desktop with Java, Scala, Python, Node, Docker and VS Code" \
    --force \
    --release

# publish on windows
vagrant cloud publish ^
    oneoffcoder/development ^
    0.0.2 ^
    virtualbox ^
    package.box ^
    --description "Ubuntu 19.04 Desktop with Java, Scala, Python, Node, Docker and VS Code" ^
    --force ^
    --release
```

# Usage

If you just want to use the box.

```bash
vagrant init oneoffcoder/development --box-version 0.0.1
vagrant up
```

If you want to customize the box, see [usage/Vagrantfile](usage/Vagrantfile).