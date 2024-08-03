# Service Management

This guide provides essential commands for managing [Nginx](https://nginx.org/en/) services using `systemd`.

## Installation

### 1. Install Nginx

```sh
sudo apt update
```
```sh
sudo apt install nginx
```

## Usage

Start and enable Nginx service:

```sh
sudo systemctl start nginx
sudo systemctl enable nginx
```

Check the state of the Nginx service:

```sh
sudo systemctl status nginx
```

Stop and disable a service:

```sh
sudo systemctl stop nginx
sudo systemctl disable nginx
```

Edit the Nginx systemd file:

```sh
sudo systemctl edit nginx
```

* Alternatively, if you want to directly edit the main service file, `sudo nano /lib/systemd/system/nginx.service`.

After editing the service file, make sure to reload the systemd manager configuration:

```sh
sudo systemctl daemon-reload
```