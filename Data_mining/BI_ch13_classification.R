#�p�G�O�ϥ�RStudio�n��ϥΪ̥i�H����
#�U�C�����O�ֳt�F�������M�Ū��u�@
rm(list = ls()) #�M��RStudio�n��k�����ҵ����ܼƤ��e
cat("\014")     #�M��RStudio�n��U��Console Window�������e

#�����A���H�j�ƾڤ��R���D�`���W�������(iris)��ƶ�(dataset)
#�@�������Airis��ƶ��O��150�Ӿ�C(row)�P5�Ӫ���(column)�Ҳ�
#������ƶ��A�b�����޳N���إߤ����ҫ��һݭn����Ƥ����ⳡ���A
#���O���V�m��ƶ�(Training dataset)�P���ո�ƶ�(Testing dataset)
#�A�H�U���ЦbR�y�������B�z�覡�P�y�k
data()        #�T�{R���Ѫ��K�O����ƶ�(dataset)�O�_��iris
data("iris")  #���Jiris��ƶ�
iris          #�d��iris��ƶ��ԲӸ��
#��즳5��
#Sepal.Length�BSepal.Width�BPetal.Length�BPetal.Width�BSpecies
#Sepal���Ḱ�APetal����ä�ASpecies����

class(iris)   #�Odata.frame��ƫ��A�A����٬���ƮءA�N�O�@�ӤG������
nrow(iris)    #�p���`�@�X�����
ncol(iris)    #�p���`�@�X�����
dim(iris)     #��ܦ����榳�X�C�P�X��

names(iris)   #��ܦ����榳�������W��
str(iris)     #str()�N�O���c(structure)���N��A��ܥX
              #���󦹪��椤��ƭȪ����A�P���
summary(iris) #���󦹪���C�@����줤���򥻲έp���

#���۬d�ݸ�Ʈؤ������@���
iris[2,3]  #���椤�d�ݸ��[�Crow,��column]�Airis[2,3]�Y��2�C��3��
iris[2,]   #�Y��2�C�Ҧ�����
iris[,3]   #�Y�Ҧ��C��3����
iris[,5]   #�Y�Ҧ��C��5����

#iris�`�@��150����ơA
#���]3/4(�Y75%)��Ƭ��V�m��ƶ��A�ѤU1/4(�Y25%)��ƴN�O���ո�ƶ�
#�hR�Ӧp��B�z?
#ANS:�Q�Ω�˨��sample()���Ӥ�ҡA3/4�V�m�ΡA1/4���եΡA
#����ᤣ��^�覡��˴N�i�H�F��
set.seed(101)   #�]�w�üƺؤl�A����˵��G���s���C�@�����ۦP

#�έp���sample()��U����iris��ƶ��A3/4�V�m�ΡA1/4���ե�
#round()�O������w�O�d�X�Ӥp�Ʀ�ƪ���ơA�H�|�ˤ��J���W�h�M�w�A
#�ϥΪ��ɭԥi�H�h���@�ӰѼ�digits�A�w�]�Odigits = 0�A�N�O�������
index = sample(nrow(iris), round((3/4) * nrow(iris)))
#39��44��n�@�_����A�s���~�|�T�w
index                          #�d�ݤ@�U�����ǩ�˨쪺�s��

training_data = iris[index,]   #�Y��index�C�Ҧ�����
dim(training_data)             #���۬d�ݰV�m��ƶ�����
training_data

testing_data  = iris[-index,]  #R�y����"-"���N�O�������N��A
                               #�Y�D��index�C�Ҧ����� 
dim(testing_data)              #���۬d�ݴ��ո�ƶ�����
testing_data

#**********************************************************
#�m���D�G
# ���]9/10(�Y90%)��Ƭ��V�m��ƶ��A
# �ѤU1/10(�Y10%)��Ƭ����ո�ƶ��AR�S�Ӧp��B�z�O?
#ANS:
#index = sample(nrow(iris),round((9/10)*nrow(iris)))
#training_data = iris[index,]   #�Y��index�C�Ҧ�����
#testing_data  = iris[-index,]  #�Y�D��index�C�Ҧ�����
#dim(training_data)             #�V�m��ƶ�����
#dim(testing_data)              #���ո�ƶ�����
#**********************************************************

#���n�[������
#�V�m��ƶ� vs.���ո�ƶ�
#�V�m��ƶ�(�Y�ؼҸ��):�i�H���Ҽҫ����u������O�v
#���ո�ƶ�:�i�H���Ҽҫ����u�w����O�v

#�ӷ~���z�P�j�ƾڤ��R(�ɮ��ѧ�) p.432
#������K�̾F��k(K-Nearest Neighbors)�A²��KNN�k
#KNN�O�@�ؤ��ݭn�إ߼ҫ���������k�A
#�ѾǪ�Cover�MHart��1968�~���X�A�䷧���D�`��²��A
#�P�_�C���V�m��ƻP�ݤ�����ƪ��Z��(Distance)�A
#�A�Q�ΩM�ݤ�����Ƴ̪�K�ӰV�m������O���@�ݤ���
#��ƪ����O�C�����H���}�|���ʤ����h�ƨM�벼�覡�T�{�����O

#���w�˻P�U���t��knn()��ƪ��M��class
#KNN��z��²��S���c�ƭp�⪺��h�A���p�n�w���@�ӤH�O��������n���w���O?
#�u�n�b�¸�Ƥ�����o�@�ӤH�̬ۦ�(�̾a��)��K�ӤH�A�M��ݬݸ�o�ӤH�̾a��
#���F�~�L�̦U�۬O��������A�Φh�ƨM�벼�A���������Ƥ���h���N�O���@�ӤH�w��
#�Ȫ������A�q�Y������b�p��ۦ���(�κپa�񪺵{��)�A�ҥH�|���N�N����Ʃ�����
#���a�񪺵{�׳���X�ӡA�M��s���H�i�ӡA�N�N�o�@��s�Ȥ᪺��ƻP�¸�Ƥ������Z
#����X�ӡAK=3�N�|��̾a��3�ӤH�A�M��ݳo3�ӤH�˩��L�̬O��������A�M��ϥ�
#�h�ƨM�AK�@�����ܪ��ܫh�w���ĪG�|���P�AK�V�p�p��ɶ��|�V���AK�V�j�h�p��ɶ�
#�|�V�֡C
#install.packages("class")
library(class)

#����Ƹg�L�����޳N���k����ҫإߪ��ҫ���\��O�w����L�|������
#��ƪ����O�ȡC��ҫ��Φ��P�^�k���R(Regression Analysis)����
#�YY(���ܼ�) = X1(���ܼ�) + X2 + ... + Xk
#R�y�k�@�G�ҫ��W�� = ��ƦW��(Y ~ X1 + X2 + �K + Xk, ��L�Ѽ�)
#R�y�k�G�G�ҫ��W�� = ��ƦW��(Y ~. , ��L�Ѽ�)

#R�y����knn()��ƻy�k�G
#knn(�V�m��ƶ���X, �w���һݪ�X, �V�m��ƶ���Y, �̪�F�~�ƶqk)

X.train = training_data[,1:4]
Y.train = training_data[,5]
X.test =  testing_data[,1:4]
Y.test =  testing_data[,5]  

#�̫�A�|�H���ͤ@�ӲV�c�x�}(Confusion Matrix)�A
#��ت����i�{�ҫغc�������ҫ����Z�Ī��������G
# k = 3���N��N�O�F�~�ƶq��3
Pred1_KNN = knn(X.train, X.train, Y.train, k = 3)

#���U�ӴN�O�H�V�mdataset(��ƪ�75%)�ҫغc�������ҫ�
#���w�����V�c�x�}Confusion Matrix������ 

#�H�C�p��(�S�٥�e��)�覡�e�{
#table()��Ʒ|�Ǧ^�@�ӦC�p��(�κ٥�e��)�A
#dnn = ���Ѽƥ\��i�H�b�C�p������������ת��W�١A
#�q�`�O�b������ܼƸ�ƬO"���"���٬O"�w��"��
mytable1 = table(Y.train, Pred1_KNN, dnn = c("���", "�w��"))  
p_accuracy = sum(diag(mytable1))/sum(mytable1)*100
p_precision_s = mytable1[1,1] / sum(mytable1[,1])
p_precision_c = mytable1[2,2] / sum(mytable1[,2])
p_precision_v = mytable1[3,3] / sum(mytable1[,3])
p_recall_s = mytable1[1,1] / sum(mytable1[1,])
p_recall_c = mytable1[2,2] / sum(mytable1[2,])
p_recall_v = mytable1[3,3] / sum(mytable1[3,])

print(mytable1);cat("\n\n�w�����T�v = ",p_accuracy,"% \n");cat("\n\nsetosa Precision = ",p_precision_s*100,"% \n");cat("setosa Recall = ",p_recall_s*100,"% \n")



#����dataset�������w����Confusion Matrix 
Pred2_KNN = knn(X.train, X.test , Y.train, k = 3)

#�H��e���覡�e�{
#table()��Ʒ|�Ǧ^�@�ӦC�p��(�κ٥�e��)�Adnn�ѼƷ|�b���G����ܪ����צW��
mytable2 = table(Y.test, Pred2_KNN, dnn = c("���", "�w��"))  
p_accuracy = sum(diag(mytable2))/sum(mytable2)*100
print(mytable2);cat("\n\n�w�����T�v = ",p_accuracy,"% \n")



#**********************************************************
#R�y����X��Ƥp�u�㻡���Gprint() Vs. cat()
#�bR�y�����A�i�H�ϥ�print()�Mcat()�ӿ�X���G�C
#���o��ؤ�k���ǳ\�t���A���O���Φb���P�����p�C
#print()�u�����X��@��object�����e�A�`�Φb
#��Xmatrix��list�o��ظ�Ƶ��c�����A�D�`����K�A
#���ݭn�A�B�~�w�q�榡�C
#�d��1:
print(matrix(c(1,2,3,4), 2 ,2))
#�d��2:
x=1;y=2
print("The result of ", x, "plus", y, "is", x+y)
#���~�A�]���n�ϥνd��2�W�z����k�ӦL�X��ƪ��ܡA�h�ݨϥ�cat()�C
#���Ocat()�L�k�L�Xmatrix,list�o��ظ�Ƶ��c�ܼƤ��e�C
cat("The result of ", x, "plus", y, "is", x+y)
cat(list("Hello~", "there"))
#**********************************************************



#�Niris������A�y�L����@�U���150����ƪ��������p
#�������e���G��
install.packages("ggplot2")
library(ggplot2)
#�Ḱ���e���G��
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point(aes(color = Species))
#��ä���e���G��
ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) + geom_point(aes(color = Species))

#�p�G�ڭ̪��D�Ⱥ�(�W�Ϥ����C��)���зǵ��סA
#���ޥΪḰ�άO��ä�n�����i�H�ײ�����X�ӡA
#���p�G�ڭ̤����D�зǵ��׮ɡA�@���N�ݤ��X�ӽ֬O�֤F
ggplot(iris) + geom_point(aes(x = Petal.Length, y = Petal.Width)) 



##############################################################
#�M����`������k��CART�BC5.0�BC4.5�BCHAID��
#��R�n�餤�䴩�o�ǨM�����k���M����C�p�U
#CART�M����GR�i�ϥ�tree�M��Brpart�M��
#C5.0�M����GR����C50�M��C5.0���
#C4.5�M����GR�i�ϥ�RWeka�M��(J48�����k)
#CHAID�M����GR�i�ϥ�CHAID�M��chaid��ơA
#PS.CHAID�M��ثe�i�H�qR-Forge�����U���w�ˡA�|�������o�G
##############################################################

#�M����bR�y�������y�k
#���إ߼ҫ�
#�覡�@�G�ҫ��W�� = ��ƦW��(Y ~ X1 + X2 + �K + Xk, ��L�Ѽ�)
#�覡�G�G�ҫ��W�� = ��ƦW��(Y ~. , ��L�Ѽ�)
#�@�Ӷ��I"."���ܥ������ܼ����
#Y�Y�������ܼƩκ����O�ܼơA�q�`�ݬ�Factor���A�A
#X1 , X2 , �K , Xk�Ҧpiris�����e�|�����A
#���O��Sepal.Length,Sepal.Width,Petal.Length,Petal.Width

#���۳z�L�ҫ��i��w���u�@
#Ypred = predict(�ҫ��W�� [, newdata ] [,type="class" ])


#�M����(Decision Tree)�O�`�Ϊ���Ʊ��ɧ޳N�A�i�����j�k���R���X�R�C
#�M����i�Ω�����w���A�����M����i�٬�������(Classification Tree)�C
#�o�̭n�|�Ҫ������j�k��(CART, Classification and Regression Tree)
#�O��Brieman�b1984�~���X�A�L�é�2001�~���XRandom Forest�M����C
#�b�o�̧ڭ̥��N����H������90%�V�m��ƶ��A10%���ո�ƶ��A
#�A�ϥ�rpart�M�󤤪�rpart��ƩMtree�M�󤤪�tree��ƨӫغcCART�M����G
#RPART���M��N�i�H�]CART
n=0.1*nrow(iris)  #10%���ո�ƶ��h��15��
test.index=sample(1:nrow(iris),n) #��˥X10%���ո�ƶ�(15��)���s��
iris.test=iris[test.index,]   #��X10%���ո�ƶ�
iris.train=iris[-test.index,] #���O�����ո�ƶ�������(135���Y90%)�����V�m��ƶ�

#rpart()�w�q�Grpart(formula,data,method,...)
#formula�G�n�ϥΪ��ݩʡA�����ܼ�~�ݩ����1+�ݩ����2+�ݩ����3+...
#data�G��ƶ��W��
#method�G�ΨӤ��R����k
#�Ҧp�Grpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris.train, method = "class")

#rpart�M��
install.packages("rpart")
library(rpart)
irisTree_1 = rpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = 
                     iris.train, method = "class")
irisTree_1    #�����M����A���O���O�ܦn�\Ū

windows()  #�t�~�}�@�ӵe�ϵ���quartz()
plot(irisTree_1) #ø�s�M�����
text(irisTree_1) #�N��r�����J�M����Ϥ�(�`�N�e���ը�̤j��)  
plot(irisTree_1);text(irisTree_1) 

#tree�M��
install.packages("tree")
library(tree)
irisTree_2 = tree(Species ~ . , data = iris.train)
irisTree_2
windows();plot(irisTree_2);text(irisTree_2)


#C5.0�M����(R����C50�M��C5.0���)
#Quinlan�b1986�~�Ҵ��X��ID3�t��k��A�]��L�k�B�z�s���ݩʪ����D
#�B���A�Φb�B�z�j����ƶ��A�]��1993�S�o��C5.0���e��4.5�A����{�b
#�ҨϥΪ�C5.0�M����t��k�CC5.0�t��k�����G�i���ͨM����γW�h����
#�ؼҫ��A�åB�̳̤j��T�W�q�����Ӥ��μ˥��A�í��ƶi����Ϊ����
#���l������A�Q���ά���CC5.0��B�z�s���ܼƻP���O�����ܼƸ�ơA
#�ؼ���쥲���O���O���ܼơC���B�̵M�ϥ�iris��ƶ��ӫإ߼ҫ��C

install.packages("C50")
library(C50)
irisC50=C5.0(Species~ . ,data=iris)   #���B�N150�����ƫإ߼ҫ��ϥ�
irisC50
summary(irisC50)   #�����M����K�n��T�A���O�]���O�ܦn�\Ū
windows();plot(irisC50)








