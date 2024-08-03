# Linux Process Management Guide

This guide provides essential Linux commands for managing processes.

## Installation

### 1. Install Utilities

```sh
sudo apt update
```
```sh
sudo apt install iotop && sudo apt install htop
```

## Usage

Check all processes:

```sh
ps -aux
```

* Or use `top` or `htop` for a dynamic, real-time view of processes.

Kill one process:

```sh
kill <PID>
```

* Find the process ID (PID) using `ps`, `top`, or `htop`, then use the kill command.

* To forcefully kill a process, use `kill -9 <PID>`.

Find the process that consumes more RAM:

```sh
ps -aux --sort=-%mem | head -n 10
```

Find the process that consumes more CPU:

```sh
ps -aux --sort=-%cpu | head -n 10
```

Send one process to background:

```sh
command &
```

* When starting a process, append `&` to the command.

If the process is already running, suspend it with `Ctrl+Z`, then send it to the background:

```sh
bg
```

Move one process from background to foreground:

```sh
fg <job_spec>
```

For example, to move the first background job to the foreground, `fg %1`.