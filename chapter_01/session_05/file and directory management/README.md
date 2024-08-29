# Linux File And Directory Management Practice Guide

This guide provides essential Linux commands for managing files and directories.

## Usage

Create a new directory:

```sh
mkdir test_directory
```

Create a new file:

```sh
touch test_directory/test_file.txt
```

List directory contents with permissions:

```sh
ls -l test_directory
```

View permissions of a specific file:

```sh
ls -l test_directory/test_file.txt
```

Change directory permissions:

```sh
chmod 755 test_directory
```

Change file permissions:

```sh
chmod 644 test_directory/test_file.txt
```

* See the online [chmod-calculator](https://chmod-calculator.com/) for more details.

View directory attributes:

```sh
lsattr -d test_directory
```

View file attributes:

```sh
lsattr test_directory/test_file.txt
```

Add an attribute (e.g., make a file immutable):

```sh
sudo chattr +i test_directory/test_file.txt
```

Remove an attribute:

```sh
sudo chattr -i test_directory/test_file.txt
```

Change directory owner:

```sh
sudo chown new_user test_directory
```

Change file owner:

```sh
sudo chown new_user test_directory/test_file.txt
```

Change directory group:

```sh
sudo chgrp new_group test_directory
```

Change file group:

```sh
sudo chgrp new_group test_directory/test_file.txt
```

Change both owner and group:

```sh
sudo chown new_user:new_group test_directory/test_file.txt
```

Remember to replace `new_user` and `new_group` with actual usernames and group names on your system.