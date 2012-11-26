#!/bin/bash

source common.sh

URL="http://$WEBHOST/large"

$TIME curl -s $URL > /dev/null
rm $TIMELOG

for i in `seq 1 $REPTS`; do
	$TIME curl -s $URL > /dev/null
done
