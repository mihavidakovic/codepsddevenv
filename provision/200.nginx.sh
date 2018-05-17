#!/bin/bash
echo "Setting up Nginx"
cp -f ${PROVISION_DIR}/nginx/nginx.conf /etc/nginx/nginx.conf
cp -f ${PROVISION_DIR}/nginx/000-codepsd.conf /etc/nginx/sites-enabled
rm -f /etc/nginx/conf.d/vagrant.conf
service nginx reload