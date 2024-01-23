import requests
import time
import sys
import subprocess

def get_status_and_time(url):
    try:
        start_time = time.time()   
        response = requests.get(url)
        end_time = time.time()  

        elapsed_time_ms = (end_time - start_time) * 1000   

        status_code = response.status_code
        return status_code, elapsed_time_ms
    except requests.exceptions.RequestException as e:
        print(f"Hata: {e}")
        return None, None

if len(sys.argv) != 3 or sys.argv[1] != "-u":
    print("Kullanım: python status.py -u <URL>")
    sys.exit(1)

url = sys.argv[2]

while True:
    status_code, elapsed_time_ms = get_status_and_time(url)

    if status_code is not None:
        print(f"Site durum kodu: {status_code}")
        print(f"Geçen süre: {elapsed_time_ms:.2f} ms")

    time.sleep(1)  
