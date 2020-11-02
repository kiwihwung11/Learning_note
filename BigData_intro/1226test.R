x <- c(iris$Sepal.Length)
is.numeric(x)
x1 <- table(x)
x1
sort(x1,decreasing = TRUE)

#五
library(qcc)
palette(terrain.colors(26))
pareto.chart(x1,ylab="total",ylab2="cum%",main = "sepal length pareto chart",col = 1:26)

#六
y <- x1[1:26]
palette(terrain.colors(10))
names(y) <- LETTERS[1:26]
pareto.chart(y,ylab="total",ylab2="cum%",main = "sepal length pareto chart",col = 1:10)
