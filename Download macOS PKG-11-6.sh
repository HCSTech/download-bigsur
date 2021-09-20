#!/bin/sh

# Created by HCS Technology Group
# Updated September 17, 2021

# We used SUS Inspector 2.0 beta 1 to get the link from Apple
# Link: https://github.com/hjuutilainen/sus-inspector/releases/tag/v2.0b1

#Download macOS 11.6 directly from Apple as a PKG to /tmp
echo "macOS 11.6 is downloading"
/usr/bin/curl -s "http://swcdn.apple.com/content/downloads/57/38/071-97382-A_OEKYSXCO6D/97vrhncortwd3i38zfogcscagmpwksdzce/InstallAssistant.pkg" -o /private/tmp/InstallAssistant.pkg

# Run the macOS 11.6 InstallAssistant.pkg
echo "macOS 11.6 is copying the installer to your Applications"
/usr/sbin/installer -pkg /private/tmp/InstallAssistant.pkg -target /Applications

# Delete the macOS 11.6 InstallAssistant.pkg
echo "Install Assistant is being deleted"
/bin/rm -R /private/tmp/InstallAssistant.pkg

