#!/bin/sh
git clone https://github.com/openstack-dev/devstack.git
cd devstack

cat >localrc <<EOL
ADMIN_PASSWORD=password
MYSQL_PASSWORD=password
RABBIT_PASSWORD=password
SERVICE_PASSWORD=password
SERVICE_TOKEN=tokentoken

# Network configuration. HOST_IP should be the same as the IP you used
# for the private network in your Vagrantfile. The combination of
# FLAT_INTERFACE and PUBLIC_INTERFACE indicates that OpenStack should
# bridge network traffic over eth1.

HOST_IP=172.16.0.2
HOST_IP_IFACE=eth1
FLAT_INTERFACE=br100
PUBLIC_INTERFACE=eth1
FLOATING_RANGE=172.16.0.224/27
EOL
./stack.sh
