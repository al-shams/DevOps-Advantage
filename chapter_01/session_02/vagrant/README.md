# Mastering Vagrant: From Setup to Cleanup

This guide will walk you through setting up a VirtualBox virtual machine (VM) using [Vagrant](https://www.vagrantup.com/).

## Prerequisites

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)

## Installation

### 1. Install VirtualBox

```sh
sudo apt update
```
```sh
sudo apt install virtualbox
```

### 2. Install Vagrant

```sh
sudo apt install vagrant
```

* Typing `vagrant` from the command line will display a list of all available commands.

## Usage

### 1. Add Public Box (e.g. bento/ubuntu-22.04) in Vagrant

```sh
vagrant box add --provider virtualbox bento/ubuntu-22.04
```

* Public boxes are pre-configured Vagrant environments that are publicly available for download and use.
* They serve as base images for your Vagrant projects.
* To find a box, go to the [public Vagrant box catalog](https://app.vagrantup.com/boxes/search/).

To see a list of all boxes you have downloaded, you can use:

```sh
vagrant box list
```

### 2. Initialize Vagrant

```sh
vagrant init
```

### 3. Configure the Vagrantfile

See the [Vagrantfile](Vagrantfile).

### 4. Validate / Start / Check / Connect to the VM

Validate the Vagrantfile:

```sh
vagrant validate
```

Start the VM:

```sh
vagrant up
```

Check the VM:
```sh
vagrant status
```

SSH into the VM:

```sh
vagrant ssh
```

### 5. Manage the VM

Suspend the VM:

```sh
vagrant suspend
```

Halt the VM:

```sh
vagrant halt
```

Destroy the VM:

```sh
vagrant destroy
```

Logout from the VM:
```sh
logout
```