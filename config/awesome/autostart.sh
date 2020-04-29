#!/usr/bin/env bash
# ---
# Use "run program" to run it only if it is not already running
# Use "program &" to run it regardless
# ---
# NOTE: This script runs with every restart of AwesomeWM
# If you would like to run a command *once* on login,
# you can use ~/.xprofile

function run {
    if ! pgrep $1 > /dev/null ;
    then
        $@&
    fi
}

# Load terminal colorscheme and settings
xrdb ~/.Xresources

run compton --config ~/.config/compton.conf

# Network manager tray icon
run nm-applet

# Kill redshift processes
pkill redshift
pkill redshift-gtk
run redshift-gtk

# Clipit
run clipit

# Restore wallpapers
run nitrogen --restore

# Dropbox
run dropbox

# Workrave
run workrave

# Volumeicon
run volumeicon

# Solaar
run solaar

# Blueman
run blueman-applet

# Xfce4 power manager
run xfce4-power-manager
