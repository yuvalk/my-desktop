#!/bin/bash -x

lxqt-policykit-agent > /dev/null 2>&1 &
sudo systemctl start ebtables.service
sudo systemctl start firewalld.service
sudo systemctl start dnsmasq.service
sudo systemctl start libvirtd.service
sudo virsh net-start default

