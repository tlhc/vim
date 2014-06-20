#!/bin/bash - 
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
        git pull
        echo "done"
        cd ..
    fi
done
