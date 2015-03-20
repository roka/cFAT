#!/bin/sh

touch fat.fs
dd if=/dev/zero of=fat.fs bs=512 count=100000
/sbin/mkfs.msdos fat.fs
