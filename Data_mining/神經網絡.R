library(neuralnet) 
library(nnet)      
library(caret)  

data <- iris
head(class.ind(data$Species)) #可得出各種花的花種

#根據MSE最小找出最適合的影藏層數量
