#!/bin/sh

sudo diskutil unmountDisk $1
dvdbackup -p -n $2 -M -i $1 -o .
mkisofs -dvd-video -udf -o $2.iso $2
drutil tray eject
rm -R $2
