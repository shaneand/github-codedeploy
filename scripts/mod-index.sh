#!/bin/bash

hname=`curl http://169.254.169.254/latest/meta-data/public-ipv4`
cp -p /var/www/html/index.html /var/www/html/index.html.orig
cat /var/www/html/index.html | sed -e "s/HOSTNAME/${hname}/g" > /var/www/html/index.html.new
cp /var/www/html/index.html.new /var/www/html/index.html

