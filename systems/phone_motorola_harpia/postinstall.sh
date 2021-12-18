#!/bin/bash

cp -v etc/X11/xorg.conf.d.samples/11-modesetting.conf etc/X11/xorg.conf.d

# install the kernel, initramfs, boot.img etc.

# install the qcom tools qrtr-ns and rmtfs
tar xzf postinstall/qcom-tools-${2}-${3}.tar.gz

# slightly different cmdline opts are required for rmtfs here
sed -i 's,-r -s -o /lib/firmware/rmtfs,-P -r -s,g' usr/lib/systemd/system/rmtfs.service