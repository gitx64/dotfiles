#! /usr/bin/env bash
DIR="$HOME/Pictures/wallpapers"

while true; do
	if [ -d "$DIR" ]; then
		if [ -z "$(find "$DIR" -mindepth 1 -print -quit)" ]; then
			exit 1
		else
			if command -v feh &> /dev/null; then
				feh --bg-fill --randomize "$DIR"/*
				sleep 15m
			else
				exit 1
			fi
		fi	
	else
		exit 1
	fi
done &
