#!/bin/bash
#
# DPLUS Linking via the Shell
# Joshua Holmes, W4JDH <w4jdh@arrl.net>
#
# This script enables an admin to link a module to a remote repeater or reflector.
# Place in your /dstar/scripts folder and run from there.
#
# Syntax is ./dpluslink.sh <module> <repeater> <port>
# All three arguments must be all capitals.
#
# Companion unlink script is ./dplusunlink.sh
#
# This script written for WB4HRO D-STAR System. Recommended use is in an alias in ~/.bash_profile
# Recommended syntax for the alias is as follows: alias dpluslink="/dstar/scripts/dpluslink.sh"
# /dstar/tmp should be world writable for this to work.
#
MOD=`echo "$1" | awk '{print tolower($1)}'`
RPT="$2"
PORT="$3"

if [[ ${#RPT} -eq 6 ]];
   then LINK=${RPT}${PORT}L
elif [[ ${#RPT} -eq 5 ]];
   then LINK=${RPT}" "${PORT}L
elif [[ ${#RPT} -eq 4 ]];
   then LINK=${RPT}"  "${PORT}L
fi

echo "$LINK" > /dstar/tmp/link-$MOD