#!/bin/bash
echo "укажите путь до директории"
read testdir
if [ -a $testdir ];
  then
  echo "Директория $testdir существует"
  else
  mkdir $testdir
  echo "Директория $testdir создана"
fi
read
