#!/bin/sh

set -e

if [ "$CONNECTION_ID" = "Wired connection 1" ]; then
	/etc/init.d/glusterfs-server restart
fi
