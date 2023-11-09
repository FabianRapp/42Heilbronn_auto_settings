#!/bin/bash

# Change the mouse tracking speed for the current user
#defaults write com.apple.mouse.scaling -float 0.6875
#echo "Mouse tracking speed has been set."

# Change appearance to dark mode for the current user
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true'
echo "Dark mode has been enabled."

# Turn mouse natural scrolling off for the current user
defaults write com.apple.swipescrolldirection -bool false
echo "Mouse natural scrolling has been disabled."

# Turn off play user interface sound effects
defaults write "Apple Global Domain" com.apple.sound.uiaudio.enabled -int 0
# this might work if the command does not work
#defaults write com.apple.systemsound 'com.apple.sound.uiaudio.enabled' -int 0 
echo "User interface sound effects have been turned off."

# Set alert volume to 0%
osascript -e 'set volume alert volume 0'
echo "Alert volume has been set to 0%."

# Set output volume to 0%
osascript -e 'set volume output volume 0'
echo "Output volume has been set to 0%."

echo "Preferences have been updated for the current user. Some changes might not take effect due to being cached."

# Wait a bit to let the system process changes
#sleep 2


# Mouse speed value (might not be active due to old value being cached):
#defaults read com.apple.mouse.scaling

# Check if user interface sound effects are off:
#defaults read com.apple.systemsound 'com.apple.sound.uiaudio.enabled'

# Check alert volume (This will return the master volume, which includes the alert volume):
#osascript -e 'get volume settings'

# Check output volume:
#osascript -e 'output volume of (get volume settings)'

# Attempt to restart the mouse daemon to apply changes
# This might not work without admin rights
#killall SystemUIServer
