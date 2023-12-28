import subprocess as sp
import optparse
import re

def GetUserInput():
    parse_opject =optparse.OptionParser()
    parse_opject.add_option("i","--interface",dest="interFace",help="interface to change!")
    parse_opject.add_option("m","--mac",dest="macAddress",help="new mac address")
    return parse_opject.parse_args()

def ChangeMacAddress(interFace,macAddress):
    sp.call(["ifconfig"],interFace,"down")
    sp.call(["ifconfig"],interFace, "hw", "ether",macAddress)
    sp.call(["ifconfig"],interFace, "up")

def ControlNewMac(interface):
    ifconfig=sp.check_output(["ifconfig",interface])
    newMac=re.search(r"\w\w:\w\w:\w\w:\w\w:\w\w:\w\w",ifconfig)
    if newMac:
        return newMac.group(0)
    else:
        return None

print("Mac Changer Started!")
(userInput,arguments)=GetUserInput()
ChangeMacAddress(userInput.interFace,userInput.macAddress)
finalizedMac=ControlNewMac(userInput.interFace)

if finalizedMac == userInput.macAddress:
    print("Success")
else:
    print("Error")
