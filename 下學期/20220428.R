library(ggplot2)#R數據視覺化下載
library(scales)#下載scales
library(lubridate)
library(stringr)
options(scipen = 999)

setwd("C:/Users/shain/R")
dir()

COVID_19=read.csv("owl_world.csv")
View(COVID_19)
names(COVID_19)#查看欄位名稱

COVID_19_part<-COVID_19[,c("X.3","X.4","X.5","X.6","X.7","X.26")]#保留欄位
View(COVID_19_part)
names(COVID_19_part)<-c("date","total_vaccination","daily_vaccination",
                        "daily_vaccination_avg","die","population")

COVID_19_part<-COVID_19_part[-1,]#刪除第一欄
View(COVID_19_part)#再檢查欄位

str(COVID_19_part)
#將格式改成日期格式及數字格式
COVID_19_part$date<-as.character(COVID_19_part$date)
COVID_19_part$date<-strptime(COVID_19_part$date,"%Y/%m/%d",tz=Sys.timezone())
COVID_19_part$date<-as.POSIXct(COVID_19_part$date)

COVID_19_part$total_vaccination<-as.character(COVID_19_part$total_vaccination)#
COVID_19_part$daily_vaccination<-as.character(COVID_19_part$daily_vaccination)#
CO
COVID_19_part$die<-as.character(COVID_19_part$die)
COVID_19_part$population<-as.character(COVID_19_part$population)

COVID_19_part$total_vaccination<-as.numeric(COVID_19_part$total_vaccination)#
COVID_19_part$daily_vaccination<-as.numeric(COVID_19_part$total_vaccination)#

dev.new()
ggplot()+
  geom_line(data=COVID_19_part,aes(x=monitordate,y=concentration,colour = "1986溫度"),size=1)+#data.frame的資料#折線圖
  
  annotate("text",COVID_19_part$monitordate[which.max(COVID_19_part$monitordate)]
           ,y=COVID_19_part$concentration[which.max(COVID_19_part$concentration)]
           ,label=paste(COVID_19_part$monitordate[which.max(COVID_19_part$concentration)]
                        ,COVID_19_part$concentration[which.max(COVID_19_part$concentration)])
           ,colour="black",size=3,vjust=-1.5)+
  annotate("rect" #最低七日平均確診，到最高七日平均確診區間
           ,xmin=COVID_19_part_2022$date[which.min(COVID_19_part_2022$daily_vaccination_avg)]
           ,xmax=COVID_19_part_2022$date[which.max(COVID_19_part_2022$daily_vaccination_avg)]
           ,ymin=COVID_19_part_2022$daily_vaccination_avg[which.min(COVID_19_part_2022$daily_vaccination_avg)] 
           ,ymax=COVID_19_part_2022$daily_vaccination_avg[which.max(COVID_19_part_2022$daily_vaccination_avg)]
           ,alpha=0.1,fill="blue")


2022/5/5
#https://covid-19.nchc.org.tw/dt_owl.php?dt_name=4......
#全球報表\亞洲\韓國\EXCEL
#另存新檔、逗點空白分格，並將數字存成儲存數字格式,不要有小數點
library(ggplot2)#R數據視覺化下載
library(scales)#下載scales
library(lubridate)
library(stringr)
options(scipen = 999)
setwd("C:/Users/88691/Desktop/隨身碟/R 程式相關/上課教書/林浻揚/共存")
dir()
COVID_19=read.csv("owl_world_KOR.csv")
View(COVID_19)
names(COVID_19)#查看欄位名稱
COVID_19_part<-COVID_19[,c("X.3","X.4","X.5",
                           "X.6","X.7","X.26")]#保留欄位
View(COVID_19_part)
names(COVID_19_part)<-c("date","total_vaccination","daily_vaccination",
                        "daily_vaccination_avg","die","population")
COVID_19_part<-COVID_19_part[-1,]#刪除第一欄
View(COVID_19_part)#再檢查欄位
str(COVID_19_part)
#將格式改成日期格式及數字格式
COVID_19_part$date<-as.character(COVID_19_part$date)
COVID_19_part$date<-strptime(COVID_19_part$date,
                             "%Y/%m/%d",
                             tz=Sys.timezone())
COVID_19_part$date<-as.POSIXct(COVID_19_part$date)
COVID_19_part$total_vaccination<-as.character(COVID_19_part$total_vaccination)#
COVID_19_part$daily_vaccination<-as.character(COVID_19_part$daily_vaccination)#
COVID_19_part$daily_vaccination_avg<-as.character(COVID_19_part$daily_vaccination_avg)#
COVID_19_part$die<-as.character(COVID_19_part$die)
COVID_19_part$population<-as.character(COVID_19_part$population)
COVID_19_part$total_vaccination<-as.numeric(COVID_19_part$total_vaccination)#
COVID_19_part$daily_vaccination<-as.numeric(COVID_19_part$daily_vaccination)#
COVID_19_part$daily_vaccination_avg<-as.numeric(COVID_19_part$daily_vaccination_avg)#
COVID_19_part$die<-as.numeric(COVID_19_part$die)
COVID_19_part$population<-as.numeric(COVID_19_part$population)
str(COVID_19_part)#檢查格式正確與否
View(COVID_19_part)
COVID_19_part_2022<-subset(COVID_19_part,date<="2022-05-03 CST"
                           &date>="2022-01-01 CST")
View(COVID_19_part_2022)#最新的日期的資料
##劃圖累計
dev.new()
ggplot()+
  geom_line(data=COVID_19_part_2022,#data.frame的資料
            aes(x=date,y=daily_vaccination,
                colour = "daily_vaccination"),size=1)+#折線
  geom_line(data=COVID_19_part_2022,#data.frame的資料
            aes(x=date,y=daily_vaccination_avg,
                colour = "daily_vaccination_avg"),size=1)+
  theme_bw()+
  annotate("text" #標籤
           ,COVID_19_part_2022$date[which.min(COVID_19_part_2022$daily_vaccination_avg)]#自動找出最低的「七日平均新增確診」
           ,y=COVID_19_part_2022$daily_vaccination_avg[which.min(COVID_19_part_2022$daily_vaccination_avg)] # 自動找出最低「七日平均新增確診」y軸位置
           ,label=paste(COVID_19_part_2022$date[which.min(COVID_19_part_2022$daily_vaccination_avg)]
                        ,"Lo" 
                        ,COVID_19_part_2022$daily_vaccination_avg[which.min(COVID_19_part_2022$daily_vaccination_avg)])
           ,colour="blue",size=3,vjust=1.5)+
  annotate("text" #標籤
           ,COVID_19_part_2022$date[which.max(COVID_19_part_2022$daily_vaccination_avg)]#自動找出最高的「七日平均新增確診」
           ,y=COVID_19_part_2022$daily_vaccination_avg[which.max(COVID_19_part_2022$daily_vaccination_avg)] # 自動找出最高「七日平均新增確診」y軸位置
           ,label=paste(COVID_19_part_2022$date[which.max(COVID_19_part_2022$daily_vaccination_avg)]
                        ,"hi" 
                        ,COVID_19_part_2022$daily_vaccination_avg[which.max(COVID_19_part_2022$daily_vaccination_avg)])
           ,colour="black",size=3,vjust=-1.5)+
  annotate("rect" #最低七日平均確診，到最高七日平均確診區間
           ,xmin=COVID_19_part_2022$date[which.min(COVID_19_part_2022$daily_vaccination_avg)]
           ,xmax=COVID_19_part_2022$date[which.max(COVID_19_part_2022$daily_vaccination_avg)]
           ,ymin=COVID_19_part_2022$daily_vaccination_avg[which.min(COVID_19_part_2022$daily_vaccination_avg)] 
           ,ymax=COVID_19_part_2022$daily_vaccination_avg[which.max(COVID_19_part_2022$daily_vaccination_avg)]
           ,alpha=0.1,fill="blue")+
  annotate("segment"
           ,x=COVID_19_part_2022$date[which.min(COVID_19_part_2022$daily_vaccination_avg)]
           ,xend=COVID_19_part_2022$date[which.max(COVID_19_part_2022$daily_vaccination_avg)]
           ,y=COVID_19_part_2022$daily_vaccination_avg[which.max(COVID_19_part_2022$daily_vaccination_avg)]
           ,yend=COVID_19_part_2022$daily_vaccination_avg[which.max(COVID_19_part_2022$daily_vaccination_avg)]
           ,size=2,colour="yellow",arrow=arrow())+
  ggtitle(paste("South Korea 2022 COVDI-19 "
                ,"daily_vaccination_avg"
                ,"Low to Hi increase"
                ,round(
                  COVID_19_part_2022$daily_vaccination_avg[which.max(COVID_19_part_2022$daily_vaccination_avg)]/
                    COVID_19_part_2022$daily_vaccination_avg[which.min(COVID_19_part_2022$daily_vaccination_avg)]-1,2)
                ,"%"
                ,"duration"
                ,interval(start = COVID_19_part_2022$date[which.min(COVID_19_part_2022$daily_vaccination_avg)]
                          ,end = COVID_19_part_2022$date[which.max(COVID_19_part_2022$daily_vaccination_avg)]) / duration(num = 1, units = "days") 
                ,"days"
                ,"累計確診占總人口"
                ,round(head(COVID_19_part_2022$total_vaccination,1)/head(COVID_19_part_2022$population,1),2)*100
                ,"%"))+
  theme(plot.title = element_text(face="italic"
                                  ,colour = "red",hjust = 0.5,size = 15))#標題