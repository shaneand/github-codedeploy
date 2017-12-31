#!/bin/bash

hname = `hostname`
cp -p /var/www/html/index.html /var/www/html/index.html.orig
cat /var/www/html/index.html | sed -e "s/HOSTNAME/${hname}/g" > /var/www/html/index.html.new
cp -p /var/www/html/index.html.new /var/www/html/index.html

