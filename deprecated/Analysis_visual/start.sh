#!/bin/bash
# 循环执行脚本直到成功
function loop_exe()
{
    local ex_count=0
    CMDLINE=$1
    while true ; do
        #command
        sleep 1
        echo The command is \"$CMDLINE\"
        ${CMDLINE}
        if [ $? == 0 ] ; then
            echo The command execute OK!
            break;
        else
            (( ex_count = ${ex_count} + 1 ))
            echo ERROR : The command execute fialed! ex_count = ${ex_count}.
        fi
    done
}
loop_exe "python manage.py migrate"
python manage.py runserver 0.0.0.0:8000
