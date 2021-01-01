#!/bin/sh
top -d 0.1 -b -n2 | grep "Cpu(s)"|tail -n 1 | awk '{printf "%s%\n", $2 + $4}'
