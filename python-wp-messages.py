import pywhatkit as kit

try:
    kit.sendwhatmsg("+905423681864", "Bu mesaj python ile otomatik olarak oluşturulmuştur.", 10, 25)
except:
    print("Mesaj gönderilirken bir hata oluştu!")