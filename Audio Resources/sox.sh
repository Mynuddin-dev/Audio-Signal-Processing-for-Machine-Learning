#!/usr/bin/bash

files=$(ls *.wav)

for file in $files;do
	filename=$(echo $file | cut -d "." -f 1)
	
	sox "$file" -r 48000 $filename{48000}.wav
	
done

