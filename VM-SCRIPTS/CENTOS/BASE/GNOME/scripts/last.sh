#!/bin/bash

# UI settings
su developer -c 'dbus-launch gsettings set org.gnome.desktop.session idle-delay 0'
su developer -c 'dbus-launch gsettings set org.gnome.desktop.screensaver lock-delay 0'
su developer -c 'dbus-launch gsettings set org.gnome.desktop.screensaver lock-enabled false'
su developer -c 'dbus-launch gsettings set org.gnome.desktop.interface enable-animations false'

sudo yum -y erase empathy.x86_64 cheese.x86_64