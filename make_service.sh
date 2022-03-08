#!/bin/bash

touch /var/log/srv.error.log
touch /var/log/srv.out.log
cp ./srv.service /etc/systemd/system/srv.service
systemctl start srv.service
systemctl enable srv.service