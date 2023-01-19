#!/bin/bash
sumfile=0
filenum=0

avgfile=0

dirname=$1

if [ -d $dirname ];
  then
  echo "Директория $dirname существует"
#sumfile="$(ls $dirname | wc -l)"
  else
# mkdir $dirname
  echo "Директория $dirname не существует"
  exit
fi

for filenum in "$(ls $dirname | wc -l)"; do
echo "Колличество файлов $filenum"
done
for sumfile in "$(ls $dirname | wc -c)"; do
echo "Обьем всех файлов $sumfile Mb"
done
for avgfile in $(($sumfile/$filenum)); do
echo "Среднее значение $avgfile Mb"
done

read
