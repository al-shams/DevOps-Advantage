# Linux File and Link Management Practice Guide

This guide provides commands for practicing file and link management in Linux.

## Usage

Create a new file:

```sh
touch original_file.txt
```

Create a symbolic (soft) link named `soft_link.txt` pointing to `original_file.txt`:

```sh
ln -s original_file.txt soft_link.txt
```

Write data to original file and check link:

```sh
echo "This is a test." > original_file.txt
```

Check the contents of the symbolic link:

```sh
cat soft_link.txt
```

Create a hard link named `hard_link.txt` pointing to `original_file.txt`:

```sh
ln original_file.txt hard_link.txt
```

Check the contents of the original file, soft link, and hard link:

```sh
cat original_file.txt
cat soft_link.txt
cat hard_link.txt
```

Check the inode numbers of the files to see how hard links share the same inode:

```sh
ls -i original_file.txt soft_link.txt hard_link.txt
```

Compress the original file using `gzip`:

```sh
gzip original_file.txt
```

Decompress the file using `gunzip`:

```sh
gunzip original_file.txt.gz
```

Create a tar archive named `archive.tar` containing `original_file.txt`:

```sh
tar -cvf archive.tar original_file.txt
```

Extract the file from the Tar archive:

```sh
tar -xvf archive.tar
```

Delete the original file:

```sh
rm original_file.txt
```

Check the status of the symbolic link:

```sh
ls -l soft_link.txt
cat soft_link.txt
```

* Note that the symbolic link will be broken since the original file has been deleted.

Check the status of the hard link:

```sh
ls -l hard_link.txt
cat hard_link.txt
```

* The hard link will still contain the data, as it points to the same inode that original_file.txt did.