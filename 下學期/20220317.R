library(ggplot2)
library(scales)
library(lubridate)
options(scipen = 999)
setwd("C:/Users/shain/R")
dir()

Yonghe=read.csv("永和空品歷史資料.csv")
View(Yonghe)
names(Yonghe)
Yonghe<-Yonghe[,c("監測日期","溫度.br...AMB_TEMP.br......")]
names(Yonghe)[1]<-"Monitoring_date"
names(Yonghe)[2]<-"Temperate"
View(Yonghe)
Yonghe$TimeCharacter<-as.character(Yonghe$Monitoring_date)
Yonghe$TimeSeries<-strptime(Yonghe$TimeCharacter,"%Y/%m/%d",tz=Sys.timezone())
Yonghe$TimeSeries<-as.POSIXct(Yonghe$TimeSeries)
Yonghe$TimeSeries

Yonghe$Temperate<-as.character(Yonghe$Temperate)
Yonghe$Temperate<-as.numeric(Yonghe$Temperate)

str(Yonghe)

Yonghe2020<-subset(Yonghe,TimeSeries<"2020-08-31 CST"
                   & TimeSeries>"2020-01-01 CST")

Yonghe2019<-subset(Yonghe,TimeSeries<"2020-01-01 CST"
                   & TimeSeries>"2019-01-01 CST")

Yonghe2018<-subset(Yonghe,TimeSeries<"2019-01-01 CST"
                   & TimeSeries>"2018-01-01 CST")

Yonghe2017<-subset(Yonghe,TimeSeries<"2018-01-01 CST"
                   & TimeSeries>"2017-01-01 CST")

Yonghe2016<-subset(Yonghe,TimeSeries<"2017-01-01 CST"
                   & TimeSeries>"2016-01-01 CST")

Yonghe2015<-subset(Yonghe,TimeSeries<"2016-01-01 CST"
                   & TimeSeries>"2015-01-01 CST")

Yonghe2014<-subset(Yonghe,TimeSeries<"2015-01-01 CST"
                   & TimeSeries>"2014-01-01 CST")

Yonghe2020$Temperate[which.min(Yonghe2020$Temperate)]
Yonghe2020$TimeCharacter[which.min(Yonghe2020$Temperate)]

Yonghe2020$Temperate[which.max(Yonghe2020$Temperate)]
Yonghe2020$TimeCharacter[which.max(Yonghe2020$Temperate)]

dev.new()
ggplot()+
  geom_line(data=Yonghe,
            aes(x=TimeSeries,y=Temperate),size=1)+
  annotate("text"
           ,Yonghe2020$TimeSeries[which.min(Yonghe2020$Temperate)]
           ,y=Yonghe2020$Temperate[which.min(Yonghe2020$Temperate)]
           ,label=paste(Yonghe2020$TimeSeries[which.min(Yonghe2020$Temperate)]
                        ,"Lo"
                        ,Yonghe2020$Temperate[which.min(Yonghe2020$Temperate)])
           ,colour="blue",size=3,vjust=1.5)+
  annotate("text"
           ,Yonghe2020$TimeSeries[which.max(Yonghe2020$Temperate)]
           ,y=Yonghe2020$Temperate[which.max(Yonghe2020$Temperate)]
           ,label=paste(Yonghe2020$TimeSeries[which.max(Yonghe2020$Temperate)]
                        ,"hi"
                        ,Yonghe2020$Temperate[which.max(Yonghe2020$Temperate)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text"
           ,Yonghe2019$TimeSeries[which.min(Yonghe2019$Temperate)]
           ,y=Yonghe2019$Temperate[which.min(Yonghe2019$Temperate)]
           ,label=paste(Yonghe2019$TimeSeries[which.min(Yonghe2019$Temperate)]
                        ,"Lo"
                        ,Yonghe2019$Temperate[which.min(Yonghe2019$Temperate)])
           ,colour="blue",size=3,vjust=1.5)+
  annotate("text"
           ,Yonghe2019$TimeSeries[which.max(Yonghe2019$Temperate)]
           ,y=Yonghe2019$Temperate[which.max(Yonghe2019$Temperate)]
           ,label=paste(Yonghe2019$TimeSeries[which.max(Yonghe2019$Temperate)]
                        ,"hi"
                        ,Yonghe2019$Temperate[which.max(Yonghe2019$Temperate)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text"
           ,Yonghe2018$TimeSeries[which.min(Yonghe2018$Temperate)]
           ,y=Yonghe2018$Temperate[which.min(Yonghe2018$Temperate)]
           ,label=paste(Yonghe2018$TimeSeries[which.min(Yonghe2018$Temperate)]
                        ,"Lo"
                        ,Yonghe2018$Temperate[which.min(Yonghe2018$Temperate)])
           ,colour="blue",size=3,vjust=1.5)+
  annotate("text"
           ,Yonghe2018$TimeSeries[which.max(Yonghe2018$Temperate)]
           ,y=Yonghe2018$Temperate[which.max(Yonghe2018$Temperate)]
           ,label=paste(Yonghe2018$TimeSeries[which.max(Yonghe2018$Temperate)]
                        ,"hi"
                        ,Yonghe2018$Temperate[which.max(Yonghe2018$Temperate)])
           ,colour="red",size=3,vjust=-1.5)+

annotate("text"
         ,Yonghe2017$TimeSeries[which.min(Yonghe2017$Temperate)]
         ,y=Yonghe2017$Temperate[which.min(Yonghe2017$Temperate)]
         ,label=paste(Yonghe2017$TimeSeries[which.min(Yonghe2017$Temperate)]
                      ,"Lo"
                      ,Yonghe2017$Temperate[which.min(Yonghe2017$Temperate)])
         ,colour="blue",size=3,vjust=1.5)+
  annotate("text"
           ,Yonghe2017$TimeSeries[which.max(Yonghe2017$Temperate)]
           ,y=Yonghe2017$Temperate[which.max(Yonghe2017$Temperate)]
           ,label=paste(Yonghe2017$TimeSeries[which.max(Yonghe2017$Temperate)]
                        ,"hi"
                        ,Yonghe2017$Temperate[which.max(Yonghe2017$Temperate)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text"
           ,Yonghe2016$TimeSeries[which.min(Yonghe2016$Temperate)]
           ,y=Yonghe2016$Temperate[which.min(Yonghe2016$Temperate)]
           ,label=paste(Yonghe2016$TimeSeries[which.min(Yonghe2016$Temperate)]
                        ,"Lo"
                        ,Yonghe2016$Temperate[which.min(Yonghe2016$Temperate)])
           ,colour="blue",size=3,vjust=1.5)+
  annotate("text"
           ,Yonghe2016$TimeSeries[which.max(Yonghe2016$Temperate)]
           ,y=Yonghe2016$Temperate[which.max(Yonghe2016$Temperate)]
           ,label=paste(Yonghe2016$TimeSeries[which.max(Yonghe2016$Temperate)]
                        ,"hi"
                        ,Yonghe2016$Temperate[which.max(Yonghe2016$Temperate)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text"
           ,Yonghe2015$TimeSeries[which.min(Yonghe2015$Temperate)]
           ,y=Yonghe2015$Temperate[which.min(Yonghe2015$Temperate)]
           ,label=paste(Yonghe2015$TimeSeries[which.min(Yonghe2015$Temperate)]
                        ,"Lo"
                        ,Yonghe2015$Temperate[which.min(Yonghe2015$Temperate)])
           ,colour="blue",size=3,vjust=1.5)+
  annotate("text"
           ,Yonghe2015$TimeSeries[which.max(Yonghe2015$Temperate)]
           ,y=Yonghe2015$Temperate[which.max(Yonghe2015$Temperate)]
           ,label=paste(Yonghe2015$TimeSeries[which.max(Yonghe2015$Temperate)]
                        ,"hi"
                        ,Yonghe2015$Temperate[which.max(Yonghe2015$Temperate)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text"
         ,Yonghe2014$TimeSeries[which.min(Yonghe2014$Temperate)]
         ,y=Yonghe2014$Temperate[which.min(Yonghe2014$Temperate)]
         ,label=paste(Yonghe2014$TimeSeries[which.min(Yonghe2014$Temperate)]
                      ,"Lo"
                      ,Yonghe2014$Temperate[which.min(Yonghe2014$Temperate)])
         ,colour="blue",size=3,vjust=1.5)+
  annotate("text"
           ,Yonghe2014$TimeSeries[which.max(Yonghe2014$Temperate)]
           ,y=Yonghe2014$Temperate[which.max(Yonghe2014$Temperate)]
           ,label=paste(Yonghe2014$TimeSeries[which.max(Yonghe2014$Temperate)]
                        ,"hi"
                        ,Yonghe2014$Temperate[which.max(Yonghe2014$Temperate)])
           ,colour="red",size=3,vjust=-1.5)  