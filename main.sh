#!/usr/bin/env bash

while true
do
	tar -c $BKP_DIR - | curl -F document=@- https://api.telegram.org/bot$TEL_TOKEN/sendDocument\?chat_id\=$CAHTID -v
	sleep $SLEEP_TIME
done

