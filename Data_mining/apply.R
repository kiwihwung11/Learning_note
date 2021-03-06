#R語言常用aggregate函數、apply函數家族

#aggregate函數應該是數據處理中常用到的函數，聚合函數
#簡單說有點類似sql語言中的group by，可以按照要
#求把數據打組聚合，然後對聚合以後的數據進行加和
#、求平均等各種操作。
x=data.frame(name=c("張三","李四","王五","趙六"),sex=c("M","M","F","F" ),age=c(20,40,22,30),height=c(166,170,150,155))
x
#構造一個很簡單的數據，一組人的性別、年齡和身高，
#可以用aggregate函數來求不同性別的平均年齡和身高

aggregate(x[,3:4],by=list(sex=x$sex),FUN=mean)#以性別欄為標準求其他欄位的平均
aggregate(x[,3:4],by=list(sex=x$sex),FUN=sd)
aggregate(x[,3:4],by=list(sex=x$sex),FUN=sum)
aggregate(x[,3:4],by=list(sex=x$sex),FUN=min)
aggregate(x[,3:4],by=list(sex=x$sex),FUN=max)
aggregate(x[,3:4],by=list(sex=x$sex),FUN=length)#計算次數
aggregate(x[,3:4],by=list(sex=x$sex),FUN=var)
aggregate(x[,3:4],by=list(sex=x$sex),FUN=median)
aggregate(x[,3:4],by=list(sex=x$sex),FUN=range)#算全距


#一般矩陣運算用的apply
z = matrix(1:6, nrow = 3)
apply(z,1,sum)#(表,行1或列,函數)
apply(z,1,mean)
apply(z,1,sd)
apply(z,1,max)
apply(z,1,min)
apply(z,1,length)

apply(z,2,sum)
apply(z,2,mean)
apply(z,2,sd)
apply(z,2,max)
apply(z,2,min)
apply(z,2,length)

#用在list上的lapply
x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
lapply(x, sum)
lapply(x, mean)

#
a <- c(24,25,36,37)
b <- c('q', 'w', 'q','w')

tapply(a, b, mean)#從b對應a-->以b來分類以a為資料 相同類別的取平均
tapply(a, b, paste)
tapply(a, b, sum)
#q  w 
#30 31

#從編號對應品項
A = c("item042", "item072", "item068", "item031", "item099", "item123", "item348")
B = c("T200", "T300", "T500", "T300", "T500", "T200", "T300")
tapply(A,B,paste)
#$`T200`
#[1] "item042" "item123"

#$T300
#[1] "item072" "item031" "item348"

#$T500
#[1] "item068" "item099"


#代表simplified lapply可以將結果整理以
#向量、矩陣、列表的形式輸出
sapply(x, mean)
#       a     beta    logic 
#5.500000 4.535125 0.500000 


#每一個對應組件輸出5個元素，所以為列，像矩陣一樣。
sapply(x, quantile)
#         a        beta logic
#0%    1.00  0.04978707   0.0
#25%   3.25  0.25160736   0.0
#50%   5.50  1.00000000   0.5
#75%   7.75  5.05366896   1.0
#100% 10.00 20.08553692   1.0


sapply(2:4, seq)

#[[1]]
#[1] 1 2

#[[2]]
#[1] 1 2 3

#[[3]]
#[1] 1 2 3 4