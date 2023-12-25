import subprocess as sp
import optparse

def GetUserInput():
    parse_opject =optparse.OptionParser()
    parse_opject.add_option("i","--interface",dest="interFace",help="interface to change!")
    parse_opject.add_option("m","--mac",dest="macAddress",help="new mac address")
    return parse_opject.parse_args()

def ChangeMacAddress(interFace,macAddress):
    sp.call(["ifconfig"],interFace,"down")
    sp.call(["ifconfig"],interFace, "hw", "ether",macAddress)
    sp.call(["ifconfig"],interFace, "up")


print("Mac Changer Started!")
(userInput,arguments)=GetUserInput()
interFace = userInput.interFace
macAddress = userInput.macAddress
