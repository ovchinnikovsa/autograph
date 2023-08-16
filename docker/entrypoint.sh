#!/bin/bash

sed -i 's,'"/var/webmap"','"`pwd`"',' `pwd`/webmapcore.service
cp -f `pwd`/webmapcore.service /etc/systemd/system
systemctl daemon-reload
systemctl enable webmapcore.service
systemctl start webmapcore.service