rm(list = ls())       #清除右邊視窗變數
cat('\014')           #清除console視窗內容


#Example1
#text mining，五篇英文文章
#D1:A dog barks at a cat and it fell from a 1-Tree.
#D2:A dog watches ants on the bark of a 2-Tree.
#D3:A dog watches another dog watches a 3Cat.
#D4:A dog barks at a cat watches another 4Cat.
#D5:The bark fell from the 5-tree as a cat Watches.

#使用combine函數c()，將這五篇文章合併為一個文字向量vdocs
myDoc=c("A dog barks at a cat and it fell from a 1-Tree.",
        "A dog watches ants on the bark of a 2-Tree.",
        "A dog watches another dog watches a 3Cat.",
        "A dog barks at a cat watches another 4Cat.",
        "The bark fell from the 5-tree as a cat Watches.")

#Example2
#D1:The sky is blue.
#D2:The sun is bright today.
#D3:The sun in the sky is bright.
#D4:We can see the shining sun, the bright sun.
#myDoc=c("The sky is blue.",
#        "The sun is bright today.",
#        "The sun in the sky is bright.",
#        "We can see the shining sun, the bright sun.")

#Example3
#D1:Data Mining and Social Media Mining.
#D2:Social Network Analysis. 
#D3:Data Mining. 

#R中顯示向量內容的基本方法
myDoc
myDoc[1]
myDoc[3:5]
myDoc[c(2,4)]

#安裝tm套件
#install.packages("tm")
#載入tm套件
library(tm)            

getSources() #告訴您R的語料庫來源形式可以是哪些哪些
getReaders() #告訴您R可以讀的格式有哪些哪些

#利用Corpus()函數建立語料庫cp_vdocs

cp_myDoc=Corpus(VectorSource(myDoc)) 

#在R中語料庫Corpus的是屬於List資料型態所以無法直接點選看內容
#可以使用inspect()函數查看內容
inspect(cp_myDoc)
#直接點選只會顯示此Corpus的概述
cp_myDoc
#看一下右邊視窗中這一個Corpus變數的組成
#可以使用$符號接content屬性看內容
cp_myDoc$content
cp_myDoc$content[1]  #看任意筆資料

#或者可以使用[[]]兩個中括號來查看List資料
cp_myDoc[[1]]
cp_myDoc[[1]][1]  #就是content真實內容
cp_myDoc[[1]][2]  #meta內容
cp_myDoc[[1]][3]  #沒有任何東西可以顯示
#同理可以查看第二句話
cp_myDoc[[2]]
cp_myDoc[[2]][1]  #就是content真實內容
cp_myDoc[[2]][2]  #meta內容
cp_myDoc[[2]][3]  #沒有任何東西可以顯示


#試著先將目前語料庫的所有英文字透過DocumentTermMatrix函數
#產生一個文件(檔)-詞條矩陣通常以DTM or dtm命名
DTM=DocumentTermMatrix(cp_myDoc)
#該矩陣依然為List資料型態，只能使用inspect()函數查看內容
inspect(DTM)
#inspect(DTM[1:5,1:14])
#testDTM=as.matrix(DTM)
#View(testDTM)


#另外也可以使用$符號接dimnames屬性以及Docs or Terms屬性
#看內容
DTM$dimnames$Docs
DTM$dimnames$Terms


#同理，使用TermDocumentMatrix()函數產生詞條文件矩陣，
#命名方式常為TDM or tdm
TDM = TermDocumentMatrix(cp_myDoc)  
inspect(TDM)


#找出發生5次以上的字詞(條目)
findFreqTerms(DTM,5)
findFreqTerms(TDM,5)

#或者可以找相關性，例如針對dog，找到相關係數在0.6以上的字詞(條目)
findAssocs(DTM, "dog", 0.6)
findAssocs(TDM, "dog", 0.6)




#英文文件探勘的資料前處理工作重點有兩個
#(1)stopwords停用字的移除工作
#(2)stemming詞幹化還原為最原始的字
#所以在產生DTM 或 TDM之前應該要先移除stopword
#以及做stemming工作，
#因此我們必須先看看目前語料庫的樣子跟等一下去除後比對一下
cp_myDoc$content

#這兩項工作都可以由tm套件中tm_map()函數來協助
#tm_map函數先全部轉換成小寫英文字母
cp_myDoc=tm_map(cp_myDoc,content_transformer(tolower))
#比較看看語料庫的樣子
cp_myDoc$content

#tm_map函數將數字0~9移除掉
cp_myDoc=tm_map(cp_myDoc,removeNumbers)
#再看看語料庫的樣子並觀察標點符號是否還在呢?
cp_myDoc$content

#tm_map函數去掉不需要的標點符號
cp_myDoc=tm_map(cp_myDoc,removePunctuation)
#再看看語料庫中標點符號是否已經去掉呢?
cp_myDoc$content


#在tm套件中stopwords()函數顯示R的詞庫中認為對於分析無幫助，
#應該去掉的英文字stopwords(稱為停用字)有哪些?總共有174個
stopwords()

#先看看尚未去掉停用字之前語料庫的情況
cp_myDoc$content
cp_myDoc[[1]]$content

#tm_map函數可以從語料庫中去掉停用詞中所條列的不需要的字
cp_myDoc=tm_map(cp_myDoc,removeWords,stopwords())
#再看一次已經去掉停用字之後語料庫的情況
cp_myDoc$content
cp_myDoc[[1]]$content

#先看看移除another之前another在句子的哪裡
cp_myDoc[[3]]$content
#tm_map函數也可以單獨去掉不需要的特定的停用字，譬如another
cp_myDoc=tm_map(cp_myDoc,removeWords,c("another"))
#再看一次已經去掉another之後語料庫的情況
cp_myDoc[[3]]$content

#先看看移除不需要的空白符號之前空白符號在句子的哪裡
cp_myDoc$content
#tm_map函數去掉不需要多餘的空白字元
cp_myDoc=tm_map(cp_myDoc,stripWhitespace)
cp_myDoc$content


#刪除不需要的停用字之後再一次產生DTM矩陣看看是否有差別
DTM=DocumentTermMatrix(cp_myDoc)  
inspect(DTM)  #剩下8個terms

#查看DTM矩陣後是否有怪怪的地方? "bark" 與 "barks"同義字
#但是動詞時態不同，所以接下來要做Stemming詞幹化工作，
#此處R語言需要另一個套件SnowballC來協助詞幹化工作

#install.packages("SnowballC")   #安裝SnowballC套件
library(SnowballC)              #載入SnowballC套件

#先看看Stemming工作之前barks在句子在哪裡
cp_myDoc$content
cp_myDoc[[4]]$content
#執行Stemming工作(詞幹化工作)
cp_myDoc=tm_map(cp_myDoc,stemDocument)
cp_myDoc$content
cp_myDoc[[4]]$content

#執行Stemming工作後再一次產生DocumentTermMatrix
DTM=DocumentTermMatrix(cp_myDoc)
#查看矩陣是否已經解決bark與barks同義字合併計算?
inspect(DTM)  #剩下7個terms


#***************************************************
#R語言中有預設的tfidf計算公式，但是此為加權過的值，
#與一般Text Mining學理上所介紹的tfidf定義的公式結果
#有些差異，可以先行使用
#***************************************************
DTM_R_tfidf = DocumentTermMatrix(cp_myDoc,control = list(weighting=weightTfIdf))
inspect(DTM_R_tfidf)  #查看tfidf值與教材中內容是否有差異?

#**************
#視覺化文字雲
#**************
#install.packages("wordcloud")  #安裝wordcloud套件
library(wordcloud)             #載入wordcloud套件

#計算目前DTM矩陣中每一個英文字在五份文件中的總次數
myterm = sort(colSums(as.matrix(DTM)),decreasing = TRUE)
head(myterm,3)
#在R中繪製文字雲
wordcloud(names(myterm),myterm,min.freq = 1,random.order = F)

#在R中繪製文字雲的另一個方法
windows()  #另外開啟一個視窗顯示文字雲
wordcloud(names(myterm),myterm,min.freq = 1,colors = 1:length(names(myterm)),random.order = T)


#計算目前DTM_R_tfidf矩陣中每一個英文字
#在五份文件中的tfidf值的加總
myterm_R_tfidf = sort(colSums(as.matrix(DTM_R_tfidf)),decreasing = TRUE)
head(myterm_R_tfidf,3)
#在R中繪製文字雲
wordcloud(names(myterm_R_tfidf),myterm_R_tfidf,min.freq = 0,random.order = F)

#在R中繪製文字雲的另一個方法
windows()  #另外開啟一個視窗顯示文字雲
wordcloud(names(myterm_R_tfidf),myterm_R_tfidf,min.freq = 0,colors = 1:length(names(myterm_R_tfidf)),random.order = T)


#***************************************
#計算Text Mining學術上常用的tfidf權重值
#先將語料庫中所建立的DTM轉成可以加減乘除
#等運算的一般矩陣myDTM
#***************************************
myDTM = as.matrix(DTM)
myDTM_TM_tfidf = myDTM 
#先計算每一份文件所包含的字詞數量，
#即針對每一列加總rowSums
myrs=rowSums(myDTM_TM_tfidf)

#先計算每一個字詞在所有文件中出現的數量，
#即針對每一行加總colSums，拆解步驟如下：
# myDTM/myDTM 0/0會變成NAN，然後取代NAN變回0就可以得出01矩陣，可判斷字元有沒有在文件中出現
# colSums(myDTM/myDTM)
# is.nan(myDTM/myDTM)
# replace(myDTM/myDTM,is.nan(myDTM/myDTM),0)
mycs=colSums(replace(myDTM_TM_tfidf/myDTM_TM_tfidf,is.nan(myDTM_TM_tfidf/myDTM_TM_tfidf),0))


#計算每一個字詞的idf值
myidf=log10(nrow(myDTM_TM_tfidf)/mycs)


#為每一個字詞在每一份文件中的tfidf值
for (i in 1:nrow(myDTM_TM_tfidf))
{
  myDTM_TM_tfidf[i,]=(myDTM_TM_tfidf[i,]/myrs[i])*myidf
}

myDTM_TM_tfidf  #此內容值為一般Text Mining中的tfidf



#************************************************************
#簡單的集群分析Clustering 
#可以根據文件距離做集群Clustering
#又或者可以根據字詞做集群Clustering
#在集群分析中，主要可以分成兩種類型：
#(1)階層式集群(Hierarchical Clustering)：
#   不需指定集群數目，讓資料自動由上往下/由下往上結合起來。
#(2)分割式集群(Partitional Clustering)：
#   需事先指定集群數目，經過不斷的迭代，直到群內的變異最小。
#************************************************************

#首先利用dist()函數先產生文件之間「距離矩陣(Distance Matrix)」，
#可以初判資料之間的距離的遠或近，距離的計算常用的有兩種：
#(1)歐式距離euclidean 
#(2)曼哈頓距離manhattan
#的另一個觀念即相似度(Similarity)
mydist=dist(myDTM_TM_tfidf)
#mydist_e=dist(myDTM_TM_tfidf,method="euclidean")
#mydist_m=dist(myDTM_TM_tfidf,method="manhattan")


#接著就可以根據資料間的距離，進行階層式集群，可以使用hclust()函數
#一般來說，要如何把某些資料結合起來為一群，不同的集群方式，
#也會產生不同的集群結果，R語言中常用有五種方法，而我們可以
#在hclust()函數的method參數中修改，語法如下：
#hclust(mydist, method="single")   # 最近法(Single Linkage)
#hclust(mydist, method="complete") # 最遠法(Complete Linkage)
#hclust(mydist, method="average")  # 平均法(Average Linkage)
#hclust(mydist, method="centroid") # 中心法(Centroid Method)
#hclust(mydist, method="ward.D2")  # 華德法(Wards Method)
myhc=hclust(mydist,method = "single")  #階層式集群法

#視覺化繪圖
windows()
plot(myhc)  #繪製集群圖
#abline(h=0.06, col="blue")
#標示區塊框出三群資料的範圍
rect.hclust(myhc, k=3)


mydist_sc=dist(scale(myDTM_TM_tfidf)) #標準化
myhc_sc=hclust(mydist_sc,method = "single")  #階層式集群法
windows()
plot(myhc_sc)  #繪製集群圖
#abline(h=0.06, col="red")
rect.hclust(myhc_sc, k=3)


#計算目前myDTM矩陣中每一個英文字在五份文件中的總次數
myterm_TM_tfidf = sort(colSums(myDTM_TM_tfidf),decreasing = TRUE)
head(myterm_TM_tfidf,3)
wordcloud(names(myterm_TM_tfidf),myterm_TM_tfidf,min.freq = 0,random.order = F)  #R中顯示文字雲


windows()  #另外開啟一個視窗顯示文字雲
wordcloud(names(myterm_TM_tfidf),myterm_TM_tfidf,min.freq = 0,colors = 1:length(names(myterm_TM_tfidf)),random.order = F)


#因此我們可以利用cutree()，讓整個階層的結構縮減，
#變成分成三群的狀態：
cut.h.cluster <- cutree(myhc, k=3)  # 分成三群
cut.h.cluster                       # 集群結果



#使用函式是kmeans()：
# 分成三群
kmeans.cluster <- kmeans(myDTM_TM_tfidf, centers=3) 

# 查看群內的變異數(look up the variation within the group)
kmeans.cluster$withinss

# 查看集群結果
kmeans.cluster$cluster





