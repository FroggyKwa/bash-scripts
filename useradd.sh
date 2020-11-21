#!/usr/bin/env bash

echo "Введите имя пользователя: "
read username
echo "Должен ли пользователь сменить пароль при первом заходе в систему:"
echo "(y/n)"
read change_pass
echo "До какого дня аккаунт должен быть валиден (-1 ---- сделать аккаунт бессрочным): "
read days_to_expire
echo "С какой перодичностью пароль должен меняться: "
read pass_change_period
echo "За сколько дней до смены пароля должно прийти уведомление: "
read days_to_warning

useradd $username
if [ $change_pass == "y" ] || [ $change_pass == "Y" ] ; then
  chage -d 0 $username
fi
chage -E $days_to_expire $username
chage -M $pass_change_period $username
chage -W $days_to_warning $username
