# Make image list files that are required by im2rec for MXNet
#!/bin/sh


#rm former list files
rm *.lst
#change path to folder that contain images
cd medicinechars2/

#loop for getting image names (folders and images name by numbers)
for(( i=0; i<329; i++ ))
do
	for (( j=0; j<350; j++ ))
	do
		if (( j>=0 && j<185 )) 
		then 
			ls $i/$j.jpg > ../a.txt
 			sed  "s/^/$i /g" ../a.txt >> ../train.txt
		elif ((j>=185 && j<225)) 
		then
			ls $i/$j.jpg > ../b.txt
			sed  "s/^/$i /g" ../b.txt >> ../val.txt
		else
			ls $i/$j.jpg > ../c.txt
			sed  "s/^/$i /g" ../c.txt >> ../Test.txt
		fi
	done
done

cd ..
# Numbering each line(left alignment with tab)
sed = train.txt | sed 'N;s/\n/\t/' >> train.lst
sed = val.txt | sed 'N;s/\n/\t/' >> val.lst
cat Test.txt >> Test.lst
rm *.txt
