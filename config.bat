@echo off
title WIDSE Libraries Setup - Confirm
echo Welcome to the WIDSE Libraries Setup! Press Enter to start the setup
pause
title WIDSE Libraries Setup - Installing Libraries
haxelib set lime 8.0.2
haxelib set flixel 4.11.0
haxelib set flixel-addons 2.12.0
haxelib set flixel-tools 1.5.1
haxelib set flixel-ui 2.5.0
haxelib set openfl 9.2.2
haxelib set hscript 2.6.0
haxelib set hxCodec 2.5.1
haxelib set hxcpp 4.3.2
haxelib set hxp 1.2.2
haxelib git flxanimate https://github.com/Dot-Stuff/flxanimate
haxelib set flxanimate 1.2.0
cls
echo We are finished setting up your libraries! Press enter to quit
pause >nul
exit
