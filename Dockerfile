FROM developeranaz/rc-index:latest
RUN curl -O 'https://raw.githubusercontent.com/developeranaz/Rclone-olderversion-Backup/main/rclone-current-linux-amd64.zip' && \
    unzip rclone-current-linux-amd64.zip && \
    cp /rclone-*-linux-amd64/rclone /usr/bin/ && \
    chown root:root /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone
COPY rcindex /usr/bin/rcindex
RUN chmod +x /usr/bin/rcindex
RUN curl "$CONFIG_IN_URL" > /home/rc.conf
RUN rclone serve webdav $CLOUDNAME: --rc-addr=0.0.0.0:$PORT --config=/home/rc.conf
