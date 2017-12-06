file="./tt"
total=`wc -l $file | cut -d ' ' -f1`
div=25
splitSize=`expr $total / $div`
split -l $splitSize $file  aa
cat aaaa  aaak aaao aaaj >> val.txt
cat aaab aaan aaai aaae >> Test.txt
rm aaaa  aaak aaao aaaj
rm aaab aaan aaai aaae
cat aaa* >> train.txt
rm aaa*

