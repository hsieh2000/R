install.packages("gcookbook")
library(ggplot2)
library(gcookbook)
library(scales)
library(lubridate)
options(scipen = 999)
setwd("C:/Users/User/Downloads")
dir()
INDEX = read.csv("shilin.csv",fileEncoding = "UTF-8-BOM")
View(INDEX)
str(INDEX)

INDEX$itemname<-as.character(INDEX$itemname)
INDEX_sub<-INDEX[,3:31]
INDEX_sub

INDEX_sub<-subset(INDEX_sub,itemname=="溫度")
View(INDEX_sub)
INDEX_sub<-INDEX_sub[,4:27]
View(INDEX_sub)

str(INDEX_sub)


INDEX_sub$monitorvalue00 <-as.numeric(as.character(INDEX_sub$monitorvalue00))
INDEX_sub$monitorvalue01 <-as.numeric(as.character(INDEX_sub$monitorvalue01))
INDEX_sub$monitorvalue02 <-as.numeric(as.character(INDEX_sub$monitorvalue02))
INDEX_sub$monitorvalue03 <-as.numeric(as.character(INDEX_sub$monitorvalue03))
INDEX_sub$monitorvalue04 <-as.numeric(as.character(INDEX_sub$monitorvalue04))
INDEX_sub$monitorvalue05 <-as.numeric(as.character(INDEX_sub$monitorvalue05))
INDEX_sub$monitorvalue06 <-as.numeric(as.character(INDEX_sub$monitorvalue06))
INDEX_sub$monitorvalue07 <-as.numeric(as.character(INDEX_sub$monitorvalue07))
INDEX_sub$monitorvalue08 <-as.numeric(as.character(INDEX_sub$monitorvalue08))
INDEX_sub$monitorvalue09 <-as.numeric(as.character(INDEX_sub$monitorvalue09))
INDEX_sub$monitorvalue10 <-as.numeric(as.character(INDEX_sub$monitorvalue10))
INDEX_sub$monitorvalue11 <-as.numeric(as.character(INDEX_sub$monitorvalue11))
INDEX_sub$monitorvalue12 <-as.numeric(as.character(INDEX_sub$monitorvalue12))
INDEX_sub$monitorvalue13 <-as.numeric(as.character(INDEX_sub$monitorvalue13))
INDEX_sub$monitorvalue14 <-as.numeric(as.character(INDEX_sub$monitorvalue14))
INDEX_sub$monitorvalue15 <-as.numeric(as.character(INDEX_sub$monitorvalue15))
INDEX_sub$monitorvalue16 <-as.numeric(as.character(INDEX_sub$monitorvalue16))
INDEX_sub$monitorvalue17 <-as.numeric(as.character(INDEX_sub$monitorvalue17))
INDEX_sub$monitorvalue18 <-as.numeric(as.character(INDEX_sub$monitorvalue18))
INDEX_sub$monitorvalue19 <-as.numeric(as.character(INDEX_sub$monitorvalue19))
INDEX_sub$monitorvalue20 <-as.numeric(as.character(INDEX_sub$monitorvalue20))
INDEX_sub$monitorvalue21 <-as.numeric(as.character(INDEX_sub$monitorvalue21))
INDEX_sub$monitorvalue22 <-as.numeric(as.character(INDEX_sub$monitorvalue22))
INDEX_sub$monitorvalue23 <-as.numeric(as.character(INDEX_sub$monitorvalue23))





colnames(INDEX_sub)=c("0","1","2","3","4","5","6","7","8","9",
                      "10","11","12","13","14","15","16","17",
                      "18","19","20","21","22","23")
dev.new()
boxplot(INDEX_sub,
        xlab = "時間",
        ylab = "溫度",
        main = paste(year(head(INDEX$monitordate,1)),"年",
                     month(tail(INDEX$monitordate,1)),"~",
                     month(head(INDEX$monitordate,1)),"月",
                     head(INDEX$sitename,1),"每小時溫度變化"),
        col=rainbow(23),outline=TRUE)
abline( h = 11.8,col="red",lty=2)
abline( h = 26.5,col="red",lty=2)



