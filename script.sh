adb tcpip 5555
sleep 1
if [[ $(adb connect $(adb shell ifconfig wlan0 | grep 'inet ' | cut -c 21-33):5555) == *"connected to"* ]] 
then 
	echo $(adb devices)
	echo 'OK'
else 
	echo 'FAIL'
fi
