#!/bin/bash - 
#===============================================================================
#
#          FILE: clearsub.sh
# 
#         USAGE: ./clearsub.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2014年06月19日 15:29
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

git submodule init &>/tmp/filess
str=`cat /tmp/filess | awk -F " " '{print $9}'`
echo ${#str}
fin=`echo ${str:1:${#str} - 2}`
git rm --cached  $fin



