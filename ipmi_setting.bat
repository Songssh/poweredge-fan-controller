@echo off

cd c:/ipmitool

ipmitool -I lanplus -H 192.168.0.220 -U root -P calvin raw 0x30 0x30 0x01 0x00
echo manual fan control activated

ipmitool -I lanplus -H 192.168.0.220 -U root -P calvin raw 0x30 0x30 0x02 0xff %1
echo success
