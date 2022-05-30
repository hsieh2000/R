library(ggplot2)#R數據視覺化下載
library(scales)#下載scales
library(lubridate)
library(stringr)
options(scipen = 999)
setwd("C:/Users/shain/R")
dir()
COVID_19=read.csv("covidtable_taiwan_cdc4_1.csv",fileEncoding = "UTF-8-BOM")
View(COVID_19)
str(COVID_19)
names(COVID_19)<-c("ID","Date_1","Date_2","city","localtion","add","sum")
View(COVID_19)#檢查欄位
COVID_19<-COVID_19[-1,]#刪除第一欄
View(COVID_19)#再檢查欄位
COVID_19$Date_2<-as.character(COVID_19$Date_2)
View(COVID_19)
#COVID_19$Date_2<-strptime(COVID_19$Date_2,"%Y/%m/%d",tz=Sys.timezone())

COVID_19$Date_2<-as.POSIXct(COVID_19$Date_2)
View(COVID_19)
COVID_19$localtion<-as.character(COVID_19$localtion)#行政區
COVID_19$add<-as.character(COVID_19$add)#新增
COVID_19$add<-as.numeric(COVID_19$add)#新增成為數字格式
str(COVID_19)
COVID_19$sum<-as.character(COVID_19$sum)#累計
COVID_19$sum<-as.numeric(COVID_19$sum)#累計成為數字格式
COVID_19_0419<-subset(COVID_19,Date_2=="2022-04-19 CST")
View(COVID_19_0419)#最新的日期的資料
COVID_19_0419<-COVID_19_0419[-1,]#刪除第一欄全區加總
View(COVID_19_0419)#只看分區資料
COVID_19_0419_part<-COVID_19_0419[,c("localtion","sum")]#保留日期及溫度的欄位
View(COVID_19_0419_part)#只看分區及累計確診
str(COVID_19_0419_part)#是data_farm格式
##劃圖累計
dev.new()
ggplot(COVID_19_0419_part        #data.frame的資料
       ,aes(x=sum    #x軸累計確診
            ,y=reorder(localtion,sum)))+#y軸將名稱轉成factor,並依據累計確診為level
  geom_point(size=3)+    #產生Size=3大小的點
  theme_bw()+            #框格
  theme(panel.grid.major.x = element_blank(), #刪除主要直網路線
        panel.grid.minor.x = element_blank(), #刪除次要直網格線
        panel.grid.major.y = element_line(colour="grey60",linetype="dashed"))#水平網格線，顏色為grey60,為虛線
###劃圖新增
COVID_19_0419_part_2<-COVID_19_0419[,c("localtion","add")]#保留區域及新增的欄位
View(COVID_19_0419_part_2)#只看分區及新增確診
str(COVID_19_0419_part_2)#是data_farm格式
dev.new()
ggplot(COVID_19_0419_part_2        #data.frame的資料
       ,aes(x=add    #x軸新增確診
            ,y=reorder(localtion,add)))+#y軸將名稱轉成factor,並依據累計確診為level
  geom_point(size=3)+    #產生Size=3大小的點
  theme_bw()+            #框格
  theme(panel.grid.major.x = element_blank(), #刪除主要直網路線
        panel.grid.minor.x = element_blank(), #刪除次要直網格線
        panel.grid.major.y = element_line(colour="grey90",linetype="dashed"))#水平網格線，顏色為grey60,為虛線