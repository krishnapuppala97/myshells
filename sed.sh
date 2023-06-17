#/bin/bash
echo "enter the file name with proper path "
read file
if [ -f "$file" ]
then
echo "file exists"
else
echo "file not exists"
fi
echo "enter the find word"
read old
echo "enter the replace word"
read replace
`sed -i "s/$old/$replace/g" $file`
