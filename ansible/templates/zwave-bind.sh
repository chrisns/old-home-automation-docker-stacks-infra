#!/bin/bash
CONTAINERS=$(docker ps --no-trunc -q --filter "label=com.docker.stack.namespace=domoticz_zwave")

for CONTAINER in ${CONTAINERS}; do \
  if ! docker exec ${CONTAINER} ls /dev/ttyUSB1 > /dev/null ; then \
    echo "c 166:0 rwm" > /sys/fs/cgroup/devices/docker/${CONTAINER}/devices.allow
    docker exec ${CONTAINER} sh -c "mknod /dev/ttyUSB1 c 166 0"
  fi
done