#!/bin/bash
echo "Setting timezone"
# echo "Europe/Ljubljana" > /etc/timezone
echo "Setting UTF8 locales"
(locale-gen --purge en_US sl_SI.UTF-8 en_US.UTF-8 && update-locale)
sudo timedatectl set-timezone Europe/Ljubljana