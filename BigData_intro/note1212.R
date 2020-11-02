boxplot(CO2$conc)
boxplot(AirPassengers)
hist(CO2$uptake, freq = T)
table(CO2$Plant) #把co2的plant變成表
plot(CO2$conc, type = "l", cex = 3, col=1:15)
lines(airmiles, col=1) #加上網格
pie(table(CO2$Treatment)) #把表變成圓餅圖

a <- ts(1:30,frequency = 12, start = c(2013,3)) #製作月份時間資料，frequency代表你要月份或季度
print(a)

#時間列分析、週期分析
plot(AirPassengers) #可以看出趨勢以及峰度有點相似
apts <- ts(AirPassengers,frequency = 12) #按照月份排程表 ts代表這是時間序列資料
f <- decompose(apts) #decompose代表過濾特徵
print(f$figure)
monthNames <- months(ISOdate(2013,1:12,1))
axis(1,at=1:12, labels = monthNames, las=2) #las是調整標籤轉向
plot(f$figure,type="b",xaxt="n",xlab="") #劃出一個季度的波峰型態
plot(f$figure,type="b")
plot(f) 
#分成四個，最上面是原本的樣子。第二個是趨勢(上升或下降)，第三個是提取出的pattern，最後是隨機性
f
#$x 原始資料 $seasonal 美個月分與平均的距離 $trend 趨勢 $random 各月的變動


#常用函數
mean(AirPassengers, trim = 0.3,na.rm = FALSE) #trim 修剪outlier以近似值替代
mean(AirPassengers,na.rm = FALSE)
median(AirPassengers,na.rm = FALSE)
as.numeric(names(table(conc)))
range(AirPassengers,na.rm = FALSE)
sd(x,na.rm = FALSE)#標準差
cv <- 100*sd(AirPassengers)/mean(AirPassengers) #變異係數
cv
length(AirPassengers)


data() #可以看到R內建的資料庫
conc <- CO2$conc 
conc <- CO2$conc[c(1:10)] 
conc2 <- sort(conc,decreasing = TRUE)#排序
cum_per <- cumsum(conc2)/sum(conc2) #累積總和/總和 -->累積百分比
par(mar=c(5,5,4,5)+0.1)
bar <- barplot(conc2,ylab="Total",col="skyblue",col.axis="skyblue",col.lab="skyblue")
mtext(LETTERS[1:10],side=1,line=1,at=bar,col="black") #mtext("",side=1,line=3,col="black") 加上類別
par(new=T) #要執行這個才能疊圖
plot(bar, cum_per, axes=F, xlab="",ylab="",col="red",type="b")
axis(4,col="red",col.ticks="red",col.axis="red")
mtext("Cum%",side=4,line=3,col="red") #side控制要放在圖的哪個方位，line則是距離圖的遠近
title(main = "Pareto Chart")

##qcc帕雷托圖
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


