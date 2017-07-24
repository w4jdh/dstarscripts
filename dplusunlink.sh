#!/bin/bash
#
# DPLUS Unlinking via the Shell
# Joshua Holmes, W4JDH <w4jdh@arrl.net>
#
# This script enables an admin to unlink a module from a remote repeater or reflector.
# Place in your /dstar/scripts folder and run from there.
#
# Syntax is ./dplusunlink.sh <module>
# Both arguments must be all capitals.
#
# Companion unlink script is ./dplusunlink.sh
#
# This script written for WB4HRO D-STAR System. Recommended use is in an alias in ~/.bash_profile
# Recommended syntax for the alias is as follows: alias dplusunlink="/dstar/scripts/dplusunlink.sh"
# /dstar/tmp should be world writable for this to work.
#
if [ $# -eq 0 ]; then
echo "Usage: $0 <module>";
echo "";
echo "<module> = the local repeater module";
echo "All arguments must be in UPPER CASE."
echo "";
exit 1;
fi
MOD=`echo "$1" | awk '{print tolower($1)}'`
echo "       U" > /dstar/tmp/link-$MOD
