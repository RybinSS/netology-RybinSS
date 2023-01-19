#!/bin/bash
echo "Выберите операцию";
#x=0
select p in pl min add div; do
    case $p in
    pl)
        echo    "операция сложения";
        echo    "Введите первое число";
        read n1;
        case $n1 in
            ''|*[!0-9]*)
                    echo "это не число" ; exec $0;;
            *)
                    echo    "Введите второе число";
        esac
        read n2;
        case $n2 in
            ''|*[!0-9]*)
                    echo "это не число" ; exec $0;;
            *)
                    echo    "результат" "$(( $n1 + $n2 ))";
        esac ;;

    min)
        echo    "операция вычитания";
        echo    "Введите первое число";
        read n1;
        case $n1 in
            ''|*[!0-9]*)
                    echo "это не число" ; exec $0;;
            *)
                    echo    "Введите второе число";
        esac
        read n2;
        case $n2 in
            ''|*[!0-9]*)
                    echo "это не число" ; exec $0;;
            *)
                    echo    "результат" "$(( $n1 - $n2 ))";
        esac;;

    add)
        echo    "операция умножения";
        echo    "Введите первое число";
        read n1;
        case $n1 in
            ''|*[!0-9]*)
                    echo "это не число" ; exec $0;;
            *)
                    echo    "Введите второе число";
        esac
        read n2;
        case $n2 in
            ''|*[!0-9]*)
                    echo "это не число" ; exec $0;;
            *)
                    echo    "результат" "$(( $n1 * $n2 ))";
        esac;;

    div)
        echo    "операция деления";
        echo    "Введите первое число";
        read n1;
        case $n1 in
            ''|*[!0-9]*)
                    echo "это не число" ; exec $0;;
            *)
                    echo    "Введите второе число";
        esac
        read n2;
        case $n2 in
            ''|*[!0-9]*)
                    echo "это не число" ; exec $0;;
            *)
                    echo    "результат" "$(( $n1 / $n2 ))" ;
        esac;;

    esac
    exit
done


