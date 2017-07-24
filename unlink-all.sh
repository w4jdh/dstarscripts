#!/bin/bash
#
# DPLUS Unlinking via the Shell
# Joshua Holmes, W4JDH <w4jdh@arrl.net>
#
# This script enables an admin to unlink the all modules from a remote repeater or reflector.
# Place in your /dstar/scripts folder and run from there.
#
# Syntax is ./unlink-all.sh
#
# There is no companion link script.
#
# This script written for WB4HRO D-STAR System. Recommended use is in an alias in ~/.bash_profile
# Recommended syntax for the alias is as follows: alias unlinkall="/dstar/scripts/unlink-all.sh"
# /dstar/tmp should be world writable for this to work.
#
echo "       U" > /dstar/tmp/link-a
echo "       U" > /dstar/tmp/link-b
echo "       U" > /dstar/tmp/link-c
echo "       U" > /dstar/tmp/link-d
