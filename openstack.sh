#!/bin/sh
cd && git clone https://github.com/openstack-dev/devstack.git && cd devstack && echo -e 'password\npassword\npassword\npassword\npassword' | ./stack.sh