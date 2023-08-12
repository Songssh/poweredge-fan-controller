dim input
input = Inputbox("Welcome to fan controller"_
&chr(13)&_
"Please input hex data and the data could be have 20% ~ 100%, if you want to setting fan speed 30% input 0x1e"_
&chr(13)&_
"30% = 0x1e"_
&chr(13)&_
"25% = 0x19"_
, "Dell PowerEdge Fan Controller ","0x1e")

Set WinScriptHost = CreateObject( "WScript.shell" )

WinScriptHost.Run "ipmi_setting.bat "&input, 0
'WinScriptHost.Run Chr(34) & "tet.bat" & Chr(34), 0

Set WinScriptHost = Nothing