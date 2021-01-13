#!/sbin/sh
#### mount ro
mount -o ro /system
mount -o ro /vendor
usleep 100

#### mount remount rw
mount -o rw,remount /system
mount -o rw,remount /vendor
usleep 100

#### umount
umount /system
umount /vendor
umount -l /vendor
usleep 100