import matplotlib.pyplot as plt

# Veriler
toplam_istekler = 591540
basarisiz_istekler = 204670

basari_orani = (1 - basarisiz_istekler / toplam_istekler) * 100
basarisizlik_orani = 100 - basari_orani

kategoriler = ['Toplam İstek', 'Başarılı İstekler', 'Başarısız İstekler', 'Bağlantı Sorunu']
degerler = [toplam_istekler,toplam_istekler - basarisiz_istekler, basarisiz_istekler,  0]

etiketler = ['Başarılı İstek Oranı', 'Başarısız İstek Oranı']
boyutlar = [basari_orani, basarisizlik_orani]

zaman_degerleri = [1, 2, 3]
rps_degerleri = [1680.00,1470.00,1493.33]

# Çubuk grafiği
plt.subplot(2, 2, 1)
plt.bar(kategoriler, degerler, color=['blue', 'green', 'red', 'gray'])
plt.ylabel('Değerler (İstek Sayısı)')
plt.title('İstek Kategorileri\n (100 Bağlantı/10 Saniye)')

# Pasta grafiği
plt.subplot(2, 2, 2)
plt.pie(boyutlar, labels=etiketler, colors=['lightgreen', 'lightcoral'], autopct='%1.1f%%', startangle=140)
plt.axis('equal')
plt.title('Başarı Oranı')

# # Çizgi grafiği
# plt.subplot(2, 2, 3)
# plt.plot(zaman_degerleri, rps_degerleri, marker='o', linestyle='-')
# plt.xlabel('Zaman (saniye)')
# plt.ylabel('Saniyedeki İstek Sayısı (RPS)/s')
# plt.title('İstek Sayısının Zamana Göre Değişimi')

plt.xticks(rotation=45, ha='right')

# Grafiği gösterme
plt.tight_layout()
plt.show()
