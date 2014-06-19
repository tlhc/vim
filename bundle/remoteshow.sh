#!/bin/bash - 
#===============================================================================
#
#          FILE: up.sh
# 
#         USAGE: ./up.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2014年02月17日 09:14
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error




dir=`ls`

for i in $dir ; do
    if [ -d "$i" ] ; then 
        cd "$i"
        git remote show origin
        cd ..
    fi
done
