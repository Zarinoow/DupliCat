#!/bin/bash

#
# Options:
# Here, you can Add or Modify options.
# You can add as many locations as you want.
# The folder must exist !
#

folders=(
"/example/folder1"
"/example/folder2"
"/example/folder3"
)

#
# /!\ Nothing to modify after this line /!\
# This is the code of the program,
# modify it could damage it.
# 

echo -e "\e[0;32mWelcome to DupliCat by Zarinoow"
echo ""
echo "Please answer with the number of the concerned location."
echo "If you want to select more than one location, separate them with commas."
echo ""
echo -e "\e[0;33mOptions :"
echo ""
int=0
for i in "${folders[@]}"
do
	echo "      ${int} -> $i"
	let $[int++]
done
echo ""
echo -e "\e[0;32m      a -> All"
echo -e "\e[0;31m      c -> Cancel"
echo ""
echo -e "\e[0mYour answer:"
read options
if [ $options = "c" ]
then
		echo ""
        echo -e "\e[0;31mCanceled!"
		echo -e "\e[0m"
		exit 0
elif [ $options = "a" ]
then
		echo ""
		for i in "${folders[@]}"
		do
			cp -rpv $PWD/files/* $i
		done
		echo ""
		echo -e "\e[0;32mThe copy operation of the files is finished!"
		echo -e "\e[0m"
		exit 0
else
		echo ""
		IFS=','
		read -a selected <<< "$options"
		if [ ${#selected[*]} = 0 ]
		then
			echo -e "\e[0;31mThe answer cannot be null! Exiting..."
			echo -e "\e[0m"
			exit 1
		fi
		for i in "${selected[@]}"
		do
			cp -rpv $PWD/files/* ${folders[$i]}
		done
		echo ""
		echo -e "\e[0;32mThe copy operation of the files is finished!"
		echo -e "\e[0m"
		exit 0
fi
echo ""
echo -e "\e[0;31mA fatal error occured! Exiting..."
echo -e "\e[0m"
exit 1