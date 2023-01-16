#!/bin/bash
echo "введите ip адрес"
read ip
case $ip in
    *.*.*.*)
    echo "ok"
;;
*)
    echo "это не ip адрес"
;;
esac
echo "введите порт для проверки"
read p
case $p in
    *)
    echo "ok"

    nc -zvw3 $ip $p
;;
esac
if [ $? == 0 ]; then echo "порт открыт" ; logger "Порт $p открыт"
else echo "порт закрыт" ; logger "Порт $p закрыт"
fi
read
#read -p 'еще раз? ' answ
#[ "$answ" == y ] && exec $0
