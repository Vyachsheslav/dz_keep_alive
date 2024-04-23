#!/bin/bash

SERVER_IP="127.0.0.1"
SERVER_PORT=80
INDEX_FILE="/var/www/html/index.nginx-debian.html"

nc -z $SERVER_IP $SERVER_PORT
PORT_STATUS=$?

if [ $PORT_STATUS -ne 0 ]; then
    echo "Web server port $SERVER_PORT is not accessible."
    exit 1
fi

if [ ! -f $INDEX_FILE ]; then
    echo "Index file $INDEX_FILE does not exist."
    exit 1
fi

exit 0
