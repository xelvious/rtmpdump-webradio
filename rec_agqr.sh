#!/bin/bash

DIR=/tmp  # directory to save webradio
URL=rtmp://fms-base1.mitene.ad.jp/agqr/aandg2
SPAN=$(expr $1 \* 60)	# min to sec
TITLE=$2_$(date "+%Y%m%d")	# add date as id

rtmpdump -r $URL --live -B $SPAN -o $DIR/$TITLE.flv

