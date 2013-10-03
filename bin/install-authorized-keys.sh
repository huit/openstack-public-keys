#!/bin/bash

install -m 700 -d /root/.ssh
install -m 600    /root/.ssh/authorized_keys

cat keys/*.pub >> /root/.ssh/authorized_keys 

chmod 600  /root/.ssh/authorized_keys 

