#!/bin/bash
clear
echo "--------------------"
echo "|     Кто ты ?     |"
echo "|------------------|"
echo "| 1. Termux        |"
echo "| 2. Другой Unix   |"
echo "| 3. iSH           |"
echo "|                  |"
echo "| Введите 1/2/3:   |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install dos2unix
	pip install requests colorama proxyscrape
	cp ~/spymer/spammer.py $PREFIX/bin/spymer
	dos2unix $PREFIX/bin/spymer
	chmod -R 777 ~/spymer
	chmod 777 $PREFIX/bin/spymer
	spymer
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/spymer/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests colorama proxyscrape
			cp ~/add/add.py $PREFIX/bin/add
			dos2unix $RPEFIX/bin/add
			chmod 777 $RPEFIX/bin/add
			chmod -R 777 ~/add
			add
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			pip3 install requests
			pip3 install colorama
			pip3 install proxyscrape
			cp ~/add/add.py /usr/bin/add
			dos2unix /usr/bin/add
			chmod 777 /usr/bin/add
			add
		else
			echo "Некорректный ввод"
		fi
	fi
fi
