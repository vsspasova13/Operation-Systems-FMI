#Посредством awk, използвайки emp.data (от 03-a-6000.txt) за входнни данни,
#изведете:
#- всеки ред, като полетата са в обратен ред
#(Разгледайте for цикли в awk)

 awk '{for (i=NF; i>=1; i-=1)printf "%s\t", $i} {print "\n"}' emp.data
