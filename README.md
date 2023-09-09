# dell-server-fan-controller
you have to download ipmitool first
you can download [here](https://www.dell.com/support/home/en-us/drivers/driversdetails?driverid=m63f3)

# how to use
open ipmi_setting.bat with notepad or other text editor
edit code like
```
cd c:/ipmitool  ->   cd your_ipmitool_path
ipmitool -I lanplus -H 192.168.0.220 -U root -P calvin raw 0x30 0x30 0x01 0x00   ->
ipmitool -I lanplus -H your_ip -U your_id -P your_password raw 0x30 0x30 0x01 0x00
```
```
ipmitool -I lanplus -H 192.168.0.220 -U root -P calvin raw 0x30 0x30 0x02 0xff %1   ->
ipmitool -I lanplus -H your_ip -U your_id -P your_password raw 0x30 0x30 0x02 0xff %1
#(ip, id, password means your idrac ip, id, password)
```
after you edit save and run controller.vbs



tested with dell poweredge r730

