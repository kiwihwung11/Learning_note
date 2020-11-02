data <- read.csv("C:/Users/kiwii/OneDrive/desktop/來台觀光.csv",header=TRUE,sep=",")
data$觀光
plot(data$觀光)
AirPassengers
as.numeric(data$年別)
as.numeric(data$月份)
y <- data.frame(c1=c(data$年別),c2=c(data$月份),c3=c(data$觀光))
y2 <- ts(y$c3,frequency = 12)
y2
f1 <- decompose(y2)
print(f1)
plot(f1)
plot(f1$figure,type="l",xaxt="n",xlab="")
