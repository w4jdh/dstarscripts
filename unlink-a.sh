#!/bin/bash
#
# DPLUS Unlinking via the Shell
# Joshua Holmes, W4JDH <w4jdh@arrl.net>
#
# This script enables an admin to unlink the A module from a remote repeater or reflector.
# Place in your /dstar/scripts folder and run from there.
#
# Syntax is ./unlink-a.sh
#
# Companion link script is ./link-a.sh
#
# Changing "a" on the last line to "b", "c", or "d" will enable unlinking of B, C, or D modules.
#
# This script written for WB4HRO D-STAR System. Recommended use is in an alias in ~/.bash_profile
# Recommended syntax for the alias is as follows: alias unlinka="/dstar/scripts/unlink-a.sh"
# /dstar/tmp should be world writable for this to work.
#
echo "       U" > /dstar/tmp/link-a