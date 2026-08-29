#!/bin/sh
set -e

# In case configfile comes with other permits , frr ignores this file if thats the case
chown frr:frr /etc/frr/frr.conf 2>/dev/null || true
chmod 640 /etc/frr/frr.conf 2>/dev/null || true

/usr/lib/frr/frrinit.sh start

exec tail -f /dev/null
