#Изведете имената на потребителите, които имат поне 2 процеса, чиято команда е vim (независимо какви #са аргументите й)

 ps -ef | grep "vim" |cut -d " " -f1| sort | uniq -d
