#!/bin/bash

RED="#BF616A"
YELLOW="#EBCB8B"
GREEN="#A3BE8C"

BAT=$(upower -i $(upower -e | grep '/battery') | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//)
STATE=$(upower -i $(upower -e | grep '/battery') | grep --color=never -E state|xargs|cut -d' ' -f2)
if [ $BAT ]
then
	echo "Battery: $STATE $BAT%"
	echo "Bat: $BAT%"

	if [ $BAT -gt 95 ]
	then
		echo "$GREEN"
	elif [ $BAT -lt 5 ]
	then
		echo "$RED"
	elif [ $BAT -lt 20 ]
	then
		echo "$YELLOW"
	fi
fi
