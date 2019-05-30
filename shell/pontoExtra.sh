#!/bin/bash

#data
date
echo " "
# frases aleatórias
shuf -n 1 nome.txt
echo " "
#arquivos do Download

echo "Downloads"
cd /home/junior/Downloads && ls -ah

echo "Multimídia"
echo " "
imagens=("jpeg" "jpg" "gif" "bmp" "png" "psd" "tiff" "exif" "raw" "webp")
audio=("mp3" "acc" "ogg" "wma" "alac" "flac" "aiff" "cpm" "wav")
videos=("mp4" "wmv" "avi" "flv" "mov" "rmvb" "mpeg" "mkv")

echo "IMAGENS:"

for i in ${!imagens[@]};
do
	cd /home/victorbarbosarocha/ && find . -name *.${imagens[$i]}
done

echo "AUDIO:"

for i in ${!audio[@]};
do
	cd /home/victorbarbosarocha/ && find . -name *.${audio[$i]}
done
echo " "

echo "VIDEO:"

for i in ${!videos[@]};
do
	cd /home/victorbarbosarocha/ && find . -name *.${videos[$i]}
done
echo " "

echo "MEMORIA RAM"
free -h --giga
echo " "
echo "DISCO RIGIDO"
df -h
echo " "
