@echo off
setlocal enabledelayedexpansion
net session

echo "enabling SMBv2"
sc config lanmanworkstation depend= bowser/mrxsmb10/mrxsmb20/nsi
	sc config mrxsmb20 start= auto
	net start mrxsmb20
	echo "SMBv2 enabled"