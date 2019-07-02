#!/bin/env python3

powerSupplyLoc = "/sys/class/power_supply"
batteryLoc = "/BAT0"
batteryCurrentChargeLoc = "/charge_now"
batteryFullChargeLoc = "/charge_full"
statusLoc = "/status"

fqCurBatteryLoc = powerSupplyLoc + batteryLoc + batteryCurrentChargeLoc
fqFullBatteryLoc = powerSupplyLoc + batteryLoc + batteryFullChargeLoc

currentChargeHandle = open(fqCurBatteryLoc, "r")
currentCharge = currentChargeHandle.read()

fullChargeHandle = open(fqFullBatteryLoc, "r")
fullCharge = fullChargeHandle.read()

percentage = 100 * int(currentCharge) / int(fullCharge)

fqStatusLoc = powerSupplyLoc + batteryLoc + statusLoc
statusHandle = open(fqStatusLoc, "r")
status = statusHandle.read()

print("%3.0f" % (percentage) + " " + status[0])
