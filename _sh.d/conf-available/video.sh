#!/bin/bash

videoSplit() {
	echo "#### FOR TESTING PURPOSES ONLY ####"
	exit 0;

	STEP=1800
	for i in 0 1 2 3 4 5 6
	do
		t0=$((i * STEP))
		t1=$(((i+1) * STEP))
		ffmpeg -i "$1" -ss "$t0" -t "$STEP" -vcodec copy -acodec copy part"$i"_"$1"
	done
}