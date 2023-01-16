#!/bin/bash
echo "Введите два числа
Первое число"
read a
echo "Второе число"
read b
if ((a>b)); then ((x=$a-$b)) && echo $x
elif ((a<b)); then ((xx=$b-$a)) && echo $xx
elif ((a=b)); then ((xxx=a*b)) && echo $xxx
fi
read
