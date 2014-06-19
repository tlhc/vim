#!/bin/bash - 
#===============================================================================
#
#          FILE: do.sh
# 
#         USAGE: ./do.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2014年06月19日 17:28
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

cat ./newrere | while read LINE  
do
   eval `echo $LINE`
done
