import subprocess as sp
import argparse
import re


def get_user_input():
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--interface", dest="interface",
                        help="Interface to change!")
    parser.add_argument("-m", "--mac", dest="mac_address",
                        help="New MAC address")
    return parser.parse_args()


def change_mac_address(interface, mac_address):
    if not interface:
        print("Error: Interface not provided.")
        return

    sp.call(["ifconfig", interface, "down"])
    sp.call(["ifconfig", interface, "hw", "ether", mac_address])
    sp.call(["ifconfig", interface, "up"])


def control_new_mac(interface):
    if not interface:
        print("Error: Interface not provided.")
        return None

    ifconfig_output = sp.check_output(["ifconfig", interface]).decode("utf-8")
    new_mac = re.search(r"\w\w:\w\w:\w\w:\w\w:\w\w:\w\w", ifconfig_output)
    if new_mac:
        return new_mac.group(0)
    else:
        return None


print("Mac Changer Started!")
user_input = get_user_input()
change_mac_address(user_input.interface, user_input.mac_address)
finalized_mac = control_new_mac(user_input.interface)

if finalized_mac == user_input.mac_address:
    print("Success")
else:
    print("Error")
