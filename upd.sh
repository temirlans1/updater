#!/bin/bash

git clone https://github.com/Margulan707/koramain.git
ret_code=$?
if [ $ret_code==0 ] 
then
	mv ./kora ./kora$(date +%Y%m%d%H%M%S)
	mv ./koramain ./kora
fi

echo $ret_code
