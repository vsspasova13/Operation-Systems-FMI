#Напишете shell script, който да приема параметър име на директория, от която взимаме файлове, и опционално експлицитно 
#име на директория, в която ще копираме файлове. Скриптът да копира файловете със съдържание, променено преди по-малко 
#от 45 мин, от първата директория във втората директория. Ако втората директория не е подадена по име, нека да получи 
#такова от днешната дата във формат, който ви е удобен. При желание новосъздадената директория да се архивира.


#!/bin/bash

count=${#}

if [[ count -eq 1 ]] ; then
    dir1=$1
    dir2=$(date +'%Y-%m-%d')
    mkdir $dir2
else
    dir1=$1
    dir2=$2
fi

if [[ ! -d $dir1 || ! -d $dir2 ]]; then
    echo "opa greshka"
fi

find "$dir1" -type f -mmin -45  -exec cp {} "$dir2" 2>/dev/null \;

