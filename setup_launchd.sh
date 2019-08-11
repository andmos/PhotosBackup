#! /bin/bash

echo "Setting up backup script as launchd job..."
cp com.backup.photos.plist ~/Library/LaunchAgents
launchctl load -w ~/Library/LaunchAgents/com.backup.photos.plist