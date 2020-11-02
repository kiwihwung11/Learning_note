#第一題
x <- LifeCycleSavings$ddpi
is.numeric(x)
View(x)
palette(topo.colors(15))
hist(x[c(1:25)],col = 1:15,xlab="Country",ylab="ddpi")

#第二題
y <- data.frame(uspop)
is.factor(y)
plot(y,type ="l",cex=3,col="green",lwd=3,lty=1,xlab="year",ylab="pop")
