#!/bin/bash

#batch rename image

#change path to folder(0,1,2...) that contain images
cd medicinechars2/0
for (( j=0; j<329; j++ ))
do
	cd ../$j 
	let "a = 0"
	for i in `ls`
	#	 do mv -f $i `echo $i | sed 's/R//'`
	do 
		mv -f $i $a.jpg
		let "a=$a+1"
	done

done

#batch rename folder
#cd chars/
#for i in `ls`
##	 do mv -f $i `echo $i | sed 's/R//'`
#	do mv  $i $(($i+210)) 
#done
