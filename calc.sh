#! /bin/bash

echo "Введите первое число"
read a
echo "Введите второе число"
read b
echo "Выберите необходимую операцию: "
read op

if [[ $op == '+' ]]
then
  res=$(( $a + $b ))
elif [[ $op == '-' ]]
then
	res=$(( $a - $b ))
elif [[ $op == '/' ]]
then
	res=$(( $a / $b ))
elif [[ $op == '*' ]]
then
	res=$(( $a * $b ))
fi
echo "Результат - $res"
