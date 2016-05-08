#!/bin/bash
echo "？---输入批量文件所在目录(如：~/Pictures)（当前目录输入 .即可）---";   
read  directory;
cd  "$directory";
echo "？---输入要重命名文件类型和前缀（如：png  img_  (区分大小写)）[以空格分割]---";
read ext  begin;
mkdir  temp
echo ">>>开始批量重命名  $directory 下的 $ext 文件>>>>>>>>>>>>>>";
i=0;
             for it in   *.$ext; do
                   mv "$it"   ./temp/"$begin$i.$ext";
                   i=$(($i+1));
             done
mv  ./temp/*.$ext   ./
rm -r  temp
echo "===完成$i个文件批量重命名，文件列表如下：";
ls  *.$ext
