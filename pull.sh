#!/bin/bash
# git pull origin `whoami`
# git pull origin liuhy

function git_pull() {
    res=$(git pull origin liuhy)
    #echo $res
    status=$?
    if [ $status -eq 0 ]; then
        echo
        echo "success............ $1"
        echo
        # git log -10 -p | less
        exit 0
    else
        echo "fail,exi $1"
        exit -1
    fi

}

git_pull
if [[ $? -eq -1 ]]; then
    echo "dont not pull, exit"
    exit -1
fi
exit 0
