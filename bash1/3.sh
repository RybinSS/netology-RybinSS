#!/bin/bash
echo "Введите имя файла"
read x
case $x in
    *.jpg | *.png | *.bmp)
    echo "image"
;;
*.txt | *.doc)
    echo "text"
;;
*.mp3 | *.wav)
    echo "audio"
;;
*)
    echo "unknown"
;;
esac
read
