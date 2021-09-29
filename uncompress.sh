#!/bin/bash

extension="${1#*.}"
echo "${extension}"

if [[ $extension == "7z" ]]; then
	7z x $1
elif [[ $extension == "tar" ]]; then 
	tar -xvf $1
elif [[ $extension == "tar.gz" ]]; then 
	tar -xzvf $1
elif [[ $extension == "tar.bz2" ]]; then 
	tar -xjvf $1
elif [[ $extension == "zip" ]]; then 
	unzip $1
elif [[ $extension == "rar" ]]; then 
	unrar e $1
else 
	echo "No supported format"
fi
