#!/bin/bash
#author https://github.com/erickyun/Rclone-Server-Webdav (don't delete this)
rclone version
curl "$CONFIG_IN_URL"> /home/rc.conf
rclone listremotes
#rclone serve wedav $CLOUDNAME: --rc-addr=0.0.0.0:$PORT --config=/home/rc.conf --vfs-read-chunk-size 128M
