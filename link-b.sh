#!/bin/bash
#
# DPLUS Linking via the Shell
# Joshua Holmes, W4JDH <w4jdh@arrl.net>
#
# This script enables an admin to link the B module to a remote repeater or reflector.
# Place in your /dstar/scripts folder and run from there.
#
# Syntax is ./link-b.sh <repeater> <port>
# Both arguments must be all capitals.
#
# Companion unlink script is ./unlink-b.sh
#
# Changing "b" on the last line to "a", "c", or "d" will enable linking of A, C, or D modules.
#
# This script written for WB4HRO D-STAR System. Recommended use is in an alias in ~/.bash_profile
# Recommended syntax for the alias is as follows: alias linkb="/dstar/scripts/link-b.sh"
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

echo "$LINK" > /dstar/tmp/link-b
