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
branch_info=""
for i in $dir ; do
    if [ -d "$i" ] ; then 
        cd "$i"
        echo "current dir: $i" 
        branch_info=""
        branch_info=`git branch -a`
        branch_info=`echo $branch_info | awk -F "->" '{print $2}' | awk -F " " '{print $1}' | \
            awk -F "/" '{print $2}'`
        echo $branch_info
        git checkout $branch_info
        echo "done"
        cd ..
    fi
done
