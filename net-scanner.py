import scapy.all as scapy
import optparse as opt

def GetUserInput():
    parseObject = opt.OptionParser()
    parseObject.add_option("-i", "--ipaddress",dest="ipAdress", help="Enter IP Address")

    (userInput, arguments) = parseObject.parse_args()

    if not userInput.ipAdress:
        print("Enter IP Address")

    return userInput

def ScanNetwork(ip):
    arpRequestPacket = scapy.ARP(pdst=ip)
    broadcastPacket = scapy.Ether(dst="ff:ff:ff:ff:ff:ff")
    combinedPacket = broadcastPacket/arpRequestPacket
    (answaredList, unAnsweredList) = scapy.srp(combinedPacket, timeout=1)
    answaredList.summary()


userIpAdress = GetUserInput()
ScanNetwork(userIpAdress.ipAdress)
