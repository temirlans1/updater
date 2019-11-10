#!/bin/bash
mkdir imageDataSet
git clone https://github.com/temirlans1/koratesting.git /home/pi/koraupdate/koramain
ret_code=$?
if [ $ret_code==0 ] 
then
	mv /home/pi/koraupdate/kora /home/pi/koraupdate/kora$(date +%Y%m%d%H%M%S)
	mv /home/pi/koraupdate/koratesting /home/pi/koraupdate/kora
fi

echo $ret_code
