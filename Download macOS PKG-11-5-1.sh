#!/bin/sh

# Created by HCS Technology Group
# Updated July 27, 2021

# We used SUS Inspector 2.0 beta 1 to get the link from Apple
# Link: https://github.com/hjuutilainen/sus-inspector/releases/tag/v2.0b1

#Download macOS 11.5.1 directly from Apple as a PKG to /tmp
echo "macOS 11.5.1 is downloading"
/usr/bin/curl -s "http://swdownload.apple.com/content/downloads/01/60/071-72781-A_CZ1D1FENMH/a09fvud3xxgih7qyau9a7lhtspho36mp0l/InstallAssistant.pkg" -o /private/tmp/InstallAssistant.pkg

# Run the macOS 11.5.1 InstallAssistant.pkg
echo "macOS 11.5.1 is copying the installer to your Applications"
/usr/sbin/installer -pkg /private/tmp/InstallAssistant.pkg -target /Applications

# Delete the macOS 11.5.1 InstallAssistant.pkg
echo "Install Assistant is being deleted"
/bin/rm -R /private/tmp/InstallAssistant.pkg