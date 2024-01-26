import random

def generate_phone_numbers(num_numbers=1000):
    phone_numbers = []
    for _ in range(num_numbers):
        phone_number = "05" + "".join(str(random.randint(0, 9)) for _ in range(9))
        phone_numbers.append(phone_number)
    return phone_numbers

def write_to_file(file_path, data):
    with open(file_path, 'w') as file:
        for item in data:
            file.write("%s\n" % item)

if __name__ == "__main__":
    num_numbers = 1000
    
    phone_numbers = generate_phone_numbers(num_numbers)
    
    file_path = "phone_numbers.txt"
    write_to_file(file_path, phone_numbers)
    
    print(f"{num_numbers} adet telefon numarası oluşturulup '{file_path}' dosyasına yazıldı.")
