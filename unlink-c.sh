#!/bin/bash
#
# DPLUS Unlinking via the Shell
# Joshua Holmes, W4JDH <w4jdh@arrl.net>
#
# This script enables an admin to unlink the C module from a remote repeater or reflector.
# Place in your /dstar/scripts folder and run from there.
#
# Syntax is ./unlink-c.sh
#
# Companion link script is ./link-c.sh
#
# Changing "c" on the last line to "a", "b", or "d" will enable unlinking of A, B, or D modules.
#
# This script written for WB4HRO D-STAR System. Recommended use is in an alias in ~/.bash_profile
# Recommended syntax for the alias is as follows: alias unlinkc="/dstar/scripts/unlink-c.sh"
# /dstar/tmp should be world writable for this to work.
#
echo "       U" > /dstar/tmp/link-c