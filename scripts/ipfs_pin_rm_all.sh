#/bin/bash

files=$(ipfs pin ls)
echo $files
for i in $files
do 
	if [ "$i" != "recursive" -a "$i" != "indirect" ]
	then
		echo $i;
		ipfs pin rm $i;
	fi
done