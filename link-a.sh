#!/bin/bash
#
# DPLUS Linking via the Shell
# Joshua Holmes, W4JDH <w4jdh@arrl.net>
#
# This script enables an admin to link the A module to a remote repeater or reflector.
# Place in your /dstar/scripts folder and run from there.
#
# Syntax is ./link-a.sh <repeater> <port>
# Both arguments must be all capitals.
#
# Companion unlink script is ./unlink-a.sh
#
# Changing "a" on the last line to "b", "c", or "d" will enable linking of B, C, or D modules.
#
# This script written for WB4HRO D-STAR System. Recommended use is in an alias in ~/.bash_profile
# Recommended syntax for the alias is as follows: alias linka="/dstar/scripts/link-a.sh"
# /dstar/tmp should be world writable for this to work.
#
RPT="$1"
PORT="$2"

if [[ ${#RPT} -eq 6 ]];
   then LINK=${RPT}${PORT}L
elif [[ ${#RPT} -eq 5 ]];
   then LINK=${RPT}" "${PORT}L
elif [[ ${#RPT} -eq 4 ]];
   then LINK=${RPT}"  "${PORT}L
fi

echo "$LINK" > /dstar/tmp/link-a
