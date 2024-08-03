# Automated VM Crafting with Packer

This guide will walk you through setting up a VirtualBox virtual machine (VM) using Packer.

## Prerequisites

- [VirtualBox](https://www.virtualbox.org/)
- [Packer](https://www.packer.io/)

## Installation

### 1. Install VirtualBox

```sh
sudo apt update
```
```sh
sudo apt install virtualbox
```

### 2. Install Packer

```sh
sudo apt install packer
```

* Typing ```packer``` from the command line will display a list of all available commands.

## Usage

### 1. Configure the Packer Template

See the [debian-12-mini.json](debian-12-mini.json)

### 2. Validate Packer File

Validate the Packer Template:

```sh
packer validate <packer_template.json>
```

### 3. Build the VM

Build the VM:

```sh
packer build <packer_template.json>
```