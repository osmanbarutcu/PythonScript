# Importing the Required Library
import pywhatkit

# Defining the Phone Number and Message
phone_number = "+905423681864"
message = "message"

# Sending the WhatsApp Message
pywhatkit.sendwhatmsg_instantly(phone_number, message)

# Displaying a Success Message
print("WhatsApp message sent!")


# https://docs.ultramsg.com - UltraMsg Documentation - UltraMsg is a Python library for sending messages to WhatsApp, Telegram, Discord, Slack, and more.