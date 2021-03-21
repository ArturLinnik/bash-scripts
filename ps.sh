#!/bin/bash

var1=$(ps -eo command)
while true; do
	var2=$(ps -eo command)
	diff <(echo "$var1") <(echo "$var2") | grep "[\>\<]" | grep -v "kworker"
	var1=$var2
done
