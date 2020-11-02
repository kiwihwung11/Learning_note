install.packages("DBI")
library(DBI)
install.packages("RMySQL")
library(RMySQL)
install.packages("rstudioapi")
#連結資料庫
connect<-DBI::dbConnect(drv=RMySQL::MySQL(),
                        host="127.0.0.1",
                        port=8889,
                        user="guest2",
    password=rstudioapi::askForPassword("DataPassword"),
                        dbname="guest2db")
dbListTables(connect)
View(mtcars)
dbWriteTable(connect,"mtcars",mtcars)
dbWriteTable(connect,"iris",iris)
dbListTables(connect)
rs<-dbSendQuery(connect,
                "Select * from mtcars where cyl=4")
dbFetch(rs)
data_1<-dbFetch(rs)
View(data_1)
rs
dbClearResult(rs)
dbCreateTable(connect,"table_1",data_1)

#資料寫入資料表，從後面置入
dbWriteTable(connect,"table_1",data_1,append=TRUE)
#檢視資料表
dbReadTable(connect,"table_1")
View(dbReadTable(connect,"table_1"))

dbCreateTable(connect,"table_2",
              dbReadTable(connect,"table_1"))
dbWriteTable(connect,"table_2",
              dbReadTable(connect,"table_1"),
              append=TRUE)
dbRemoveTable(connect,"table_2")
rs2<-dbSendQuery(connect,
                "Select * from mtcars where cyl=4")
#限定只拉五筆資料
data_2<-dbFetch(rs2,n=5)
View(data_2)
dbClearResult(rs2)

f1<-c('a','aa','aaa')
f2<-c(9,99,999)
f3<- as.Date(c('1999-01-01','2000-08-07','2019-06-04'))
data_3<-data.frame(f1,f2,f3)
View(data_3)
dbWriteTable(connect,"table_3",data_3)
View(dbReadTable(connect,"table_3"))

#解除資料庫連結
connect
dbDisconnect(connect)
connect

install.packages(c("evaluate", "digest", "highr", "markdown"))
install.packages(c("stringr", "yaml", "Rcpp", "htmltools"))
install.packages(c("knitr", "jsonlite", "base64enc", "rprojroot"))
install.packages(c("rmarkdown"))




connect<-DBI::dbConnect(drv=RMySQL::MySQL(),
                        host="127.0.0.1",
                        port=8889,
                        user="guest2",
            password=rstudioapi::askForPassword("DataPassword"),
                        dbname="nfl")

rs<-dbSendQuery(connect,
"CREATE TABLE clean_data
SELECT p.GSISID as p_ID, p.Position,v.GSISID as v_ID,v.Primary_Impact_Type
FROM player_punt_data as p
INNER JOIN video_review as v
ON p.GSISID = v.GSISID  
ORDER BY `p`.`Position` ASC
")
dbListTables(connect)
rs1<-dbSendQuery(connect,
"SELECT position,COUNT(position)
FROM clean_data
GROUP BY position")
dbFetch(rs1)
data_1<-dbFetch(rs1)
View(data_1)

rs2<-dbSendQuery(connect,
"SELECT GameWeather AS 天氣 , COUNT(GameWeather) AS 受傷次數 
FROM game_data 
INNER JOIN video_review ON game_data.GameKey=video_review.GameKey 
GROUP by GameWeather ORDER BY 受傷次數 DESC")
data_2<-dbFetch(rs2)
View(data_2)
install.packages("tinyteX")

