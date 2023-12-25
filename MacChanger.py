import subprocess as sp
import optparse

parse_opject =optparse.OptionParser()
parse_opject.add_option("i","--interface",dest="interFace",help="interface to change!")
parse_opject.add_option("m","--mac",dest="macAddress",help="new mac address")
print("Mac Changer started!")
interFace="eth0"
macAddress="00:11:22:33:44:55"

sp.call(["ifconfig"],interFace,"down")
sp.call(["ifconfig"], interFace, "hw","ether",macAddress)
sp.call(["ifconfig"], interFace, "up")
