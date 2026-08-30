#!/bin/sh
set -e

/usr/lib/frr/frrinit.sh start

exec tail -f /dev/null
