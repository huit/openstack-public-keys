#!/bin/bash

HOME=${HOME:/root}

cat keys/*.pub >> authorized_keys.tmp

install -m 700 -d ${HOME}/.ssh
install -m 600     authorized_keys.tmp  ${HOME}/.ssh/authorized_keys
chmod 600  ${HOME}/.ssh/authorized_keys

rm -f authorized_keys.tmp 
