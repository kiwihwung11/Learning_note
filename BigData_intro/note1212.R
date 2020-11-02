boxplot(CO2$conc)
boxplot(AirPassengers)
hist(CO2$uptake, freq = T)
table(CO2$Plant) #��co2��plant�ܦ���
plot(CO2$conc, type = "l", cex = 3, col=1:15)
lines(airmiles, col=1) #�[�W����
pie(table(CO2$Treatment)) #����ܦ�����

a <- ts(1:30,frequency = 12, start = c(2013,3)) #�s�@����ɶ���ơAfrequency�N���A�n����Ωu��
print(a)

#�ɶ��C���R�B�g�����R
plot(AirPassengers) #�i�H�ݥX�ͶեH�ήp�צ��I�ۦ�
apts <- ts(AirPassengers,frequency = 12) #���Ӥ���Ƶ{�� ts�N���o�O�ɶ��ǦC���
f <- decompose(apts) #decompose�N���L�o�S�x
print(f$figure)
monthNames <- months(ISOdate(2013,1:12,1))
axis(1,at=1:12, labels = monthNames, las=2) #las�O�վ������V
plot(f$figure,type="b",xaxt="n",xlab="") #���X�@�өu�ת��i�p���A
plot(f$figure,type="b")
plot(f) 
#�����|�ӡA�̤W���O�쥻���ˤl�C�ĤG�ӬO�Ͷ�(�W�ɩΤU��)�A�ĤT�ӬO�����X��pattern�A�̫�O�H����
f
#$x ��l��� $seasonal ���Ӥ���P�������Z�� $trend �Ͷ� $random �U�몺�ܰ�


#�`�Ψ��
mean(AirPassengers, trim = 0.3,na.rm = FALSE) #trim �װ�outlier�H����ȴ��N
mean(AirPassengers,na.rm = FALSE)
median(AirPassengers,na.rm = FALSE)
as.numeric(names(table(conc)))
range(AirPassengers,na.rm = FALSE)
sd(x,na.rm = FALSE)#�зǮt
cv <- 100*sd(AirPassengers)/mean(AirPassengers) #�ܲ��Y��
cv
length(AirPassengers)


data() #�i�H�ݨ�R���ت���Ʈw
conc <- CO2$conc 
conc <- CO2$conc[c(1:10)] 
conc2 <- sort(conc,decreasing = TRUE)#�Ƨ�
cum_per <- cumsum(conc2)/sum(conc2) #�ֿn�`�M/�`�M -->�ֿn�ʤ���
par(mar=c(5,5,4,5)+0.1)
bar <- barplot(conc2,ylab="Total",col="skyblue",col.axis="skyblue",col.lab="skyblue")
mtext(LETTERS[1:10],side=1,line=1,at=bar,col="black") #mtext("",side=1,line=3,col="black") �[�W���O
par(new=T) #�n����o�Ӥ~���|��
plot(bar, cum_per, axes=F, xlab="",ylab="",col="red",type="b")
axis(4,col="red",col.ticks="red",col.axis="red")
mtext("Cum%",side=4,line=3,col="red") #side����n��b�Ϫ����Ӥ��Aline�h�O�Z���Ϫ�����
title(main = "Pareto Chart")

##qcc���p����
install.packages("qcc")
library(qcc)
names(conc) <- LETTERS[1:10]
pareto.chart(conc, ylab = "Total",ylab2 = "Cum%", main='Pareto Chart')

#fdth
install.packages("fdth")
library(fdth)
x <- rep(LETTERS[1:10], conc)
dc <- fdt_cat(x)
plot(dc,type='pa',col=c('skyblue','red'), main = "Pareto Chart") 

