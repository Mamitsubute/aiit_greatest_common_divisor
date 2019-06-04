#!/bin/bash

if [ $# -ne 2 ];then
    echo "エラー：引数を２個入力して下さい";
    exit
fi

expr "$1" + "$2" >&/dev/null 2>&1
if [ $? -gt 1 ];then
  echo "エラー：整数を入力して下さい"
  exit
fi


if [ $1 -gt $2 ]; then
	bigger_num=$2
	smaller_num=$2
else
	bigger_num=$2
	smaller_num=$2
fi

while :
do
	remainder=$((bigger_num % smaller_num))
	if [ $remainder != 0 ]; then
		bigger_num=$smaller_num
		smaller_num=$remainder
	else
		echo "最大公約数は$smaller_num"
		break
	fi
done

