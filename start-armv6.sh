#!/bin/bash
if [ $# -eq 0 ]; then
    echo "No image provided"
    exit 1
fi

qemu-system-arm -kernel kernel-qemu-4.4.34-jessie -cpu arm1176 -m 256 -M versatilepb -serial stdio -append "root=/dev/sda2 rootfstype=ext4 ro" -hda $1 -net nic,macaddr=de:ad:be:ef:ca:fe -net user,hostfwd=tcp::5555-:22

