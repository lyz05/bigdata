#!/bin/bash
#tail -F ./pypi.log
while true
do
    wget -c ${LOG_URI} -O ${LOG_FILE_PATH}
    sleep 5
done