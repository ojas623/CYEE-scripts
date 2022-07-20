#!/bin/bash

rsync -a install dccp /bin/true /etc/modprobe.d/dccp.conf

rsync -a install sctp /bin/true /etc/modprobe.d/sctp.conf

rsync -a install rds /bin/true /etc/modprobe.d/rds.conf

rsync -a install tipc /bin/true /etc/modprobe.d/tipc.conf