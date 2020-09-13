#Упражнение 4
#1. 
data(CO2)
#2.
?CO2
#3.
str(CO2)
#4.
head(CO2,n=5)
#Вывод первых 5 строк

tail(CO2,n=5)
#Вывод последних 5 строк

summary(CO2,digits = 0)
#Вывод описательной статистики фрейма

#5.
names.CO2<-colnames(CO2)
names.CO2
#Вывод вектора имен столбцов фрейма

#6. 

#Исключаем количественные показатели из фрейма
newf<-CO2[,sapply(CO2,is.numeric)]
newf
#7
kvar<-sapply(newf,sd)/sapply(newf,mean)
kvar
#Коэффициент вариации  = стандартное отклонение/среднее значение

qrasst<-sapply(newf,IQR)
qrasst
#Среднее квартильное расстояние
