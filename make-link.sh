#!/bin/bash

fullFilePath="$1"
file="${fullFilePath##*/}"
dir="${fullFilePath%$file}"

linkName="Link to $file"

if [ -d $dir ] ; then
	cd $dir
	ln -s "$fullFilePath" "$linkName"
	cd -
fi


