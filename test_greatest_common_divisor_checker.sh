#!/bin/sh

result=$(./greatest_common_divisor_checker.sh 10 5)
if [ $result = "最大公約数は5" ] ; then
	echo "OK"
else
	echo "NG test1"
	exit 1 # エラー終了
fi

result2=$(./greatest_common_divisor_checker.sh 4 16)
if [ $result2 = "最大公約数は4" ] ; then
	echo "OK"
else
	echo "NG test2"
	exit 1 # エラー終了
fi

result3=$(./greatest_common_divisor_checker.sh)
if [ $result3 = "エラー：引数を２個入力して下さい" ] ; then
	echo "OK"
else
	echo "NG test3"
	exit 1 # エラー終了
fi

result4=$(./greatest_common_divisor_checker.sh 5 3.1)
if [ $result4 = "エラー：整数を入力して下さい" ] ; then
	echo "OK"
else
	echo "NG test4"
	exit 1 # エラー終了
fi
