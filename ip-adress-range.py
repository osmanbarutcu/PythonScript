import ipaddress
import random

def generate_ip_addresses(num_addresses=1000):
    ip_addresses = []
    for _ in range(num_addresses):
        ip = ipaddress.IPv4Address(random.randint(0, 2**32-1))
        ip_addresses.append(str(ip))
    return ip_addresses

def write_to_text(file_path, data):
    with open(file_path, 'w') as text_file:
        for item in data:
            text_file.write(f"{item}\n")

if __name__ == "__main__":
    num_addresses = 1000
    ip_addresses = generate_ip_addresses(num_addresses)

    file_path = "ip_adresleri.txt"
    write_to_text(file_path, ip_addresses)
    
    print(f"{num_addresses} adet IP adresi oluşturulup '{file_path}' dosyasına yazıldı.")
