#!/bin/bash

git clone https://github.com/temirlans1/koratesting.git
ret_code=$?
if [ $ret_code==0 ] 
then
	mv ./kora ./kora$(date +%Y%m%d%H%M%S)
	mv ./koratesting ./kora
fi

echo $ret_code
