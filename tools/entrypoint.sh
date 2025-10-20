#!/bin/sh
sudo sysctl kernel.randomize_va_space=0
# exec /bin/bash -l
exec /usr/sbin/sshd -D