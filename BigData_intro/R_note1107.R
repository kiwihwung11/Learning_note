is.character() #文字 as.character
is.numeric() #數值
is.integer() #整數
is.logical() #邏輯
is.na() #缺值
#以上是詢問資料是否為某種型態，若用as.xxx()就是把某資料轉成另一種型態
#缺值用na或是空白才不會跑不動
factor() #類別
vector() #向量
list()
matrix() #矩陣
data.frame() #表單
date() #日期屬性 字串型態
Sys.Date() #當前日期
Sys.time() #當前日期+時間
as.Date() #轉成日期型態，包含表格合併

getwd()
setwd("C:/Users/kiwii/OneDrive/desktop/黃聖崴/課業/大四上/巨資概論")
install.packages("readr")
#灌安裝包+找路徑

x <- c("2019-10-11 10:11:52","2019-10-11 19:33:52")
x1 <- c("2019-10-11","2019-10-12")
View(x1)
is.character(x) #x是字串
as.POSIXct(x,tz="","%Y-%m-%d %H:%M:%S") #轉換成標準時間 年月日 小時分鐘秒 但原資料要符合式
x <- strptime(x,"%Y-%m-%d %H:%M:%S")
y <- strftime(x,format = "%Y/%m/%d") #轉換成指定的型態format
class(x) #最常用，精度普通，看資料型態
typeof(x) #會看內容較細
mode(x) #最粗糙

y <- data.frame(c1=c("A","B","C"),c2=1:3)
class(y)
sapply(y,class) #可以看表格變數各自的屬性
class(y$c1) #$是呼叫某個欄位名稱
is.factor(y$c1)
#多種數值組合==>矩陣 但多種數值類別組合==>dataframe
#向量的創建

x1 <- c(1,2,3)#c->column
x2 <- c('a','b','c')
x3 <- c(TRUE,FALSE,TRUE) #備註，向量一定要同一型態不然R會把他強制轉換
rm() #清除變數(xx) rm(list=ls(all=TRUE))清掉全部
#Ctrl+L清除命令窗中顯示內容
file.choose() #直接手動選檔案
read.table('test.xlsx') #可讀excel  調整(clipboard,header=T,sep="\t")
#一定要在工作目錄裡面的檔案才能讀
write.table(x1) #寫，先read再寫他就不用設定路徑
#notepad++軟體 可以快速看到資料型態，檔案太大要用這個開

#plot，可以畫圖，色塊調整也可以有熱力圖或漸層色
conc <- CO2$conc #CO2是R內建資料
#conc <- CO2['conc']同上
conc
conc <- CO2$conc[c(1:15)] #[c(1:10)] 只拉出 1~10號的資料
View(CO2)
combine <- data.frame(c1=CO2$conc[c(1:15)],c2=CO2$conc[c(21:35)])
#將資料抽取並設定新的表單對應
#在console框內和方向鍵上可以使用上一步的語法
rm(conc) #清除變數
gc() #清除所有暫存


palette(rainbow(15)) #調整色階數字代表多少種，先執行這個顏色才會變化
palette(cm.colors(15))
palette(rainbow(15))
palette(heat.colors(15))
palette(terrain.colors(15))
palette(topo.colors(15))
palette(gray.colors(15))

conc <- CO2$conc[c(1:10)]
plot(conc[c(1:15)],col=1:15) #有一堆變數可以設=>下問號去找
barplot(conc[c(1:15)],col=1:15)#繪製長條國
pie(table(CO2$Treatment))#圓餅圖

plot(CO2$conc[c(1:15)],co1=1:15)#繪製P點剛
plot(CO2$conc [c(1:15)],type ="p",cex=2,col=1:15,lwd=3,lty=1,xlab="A",ylab="B")
plot(CO2$conc [c(1:15)],type ="l",cex=3,col=1:15,lwd=3,lty=1,xlab="A",ylab="B")
#type類型”l"(線)or"p"(點),cex資料點大小,co1顏色(打出col會跑出來)
#lwd線寬,lty線的類別,xlab(x軸名稱),ylab(y軸名稱)
lines(CO2$conc[c(1:15)],col=3)#劃出折線
pie(table(CO2$Treatment))#餅圖
boxplot(AirPassengers)#箱形圖 airpassengers是內建資料 可設定col = 3
hist(CO2$uptake,freq=F,col = 1:15)#頻率分配直方國
hist(CO2$uptake, freq =T)#次數分配直方圖