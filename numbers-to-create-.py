with open("sayilar.txt", "w") as dosya:
    for sayi in range(1, 10000000):
        dosya.write(str(sayi) + "\n")
