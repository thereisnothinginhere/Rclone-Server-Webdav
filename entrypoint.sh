#!/bin/bash
#author https://github.com/erickyun/Rclone-Server-Webdav (don't delete this)
rclone version
curl "$CONFIG_IN_URL"> /home/rc.conf
rclone listremotes
rclone rcd --rc-web-gui --rc-no-auth --rc-addr=0.0.0.0:$PORT
#rclone serve wedav $CLOUDNAME: --rc-addr=0.0.0.0:$PORT --config=/home/rc.conf --vfs-read-chunk-size 128M
