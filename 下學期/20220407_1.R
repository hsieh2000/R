install.packages("lubridate")
install.packages("gglots2")
#2022/4/7
##禜计沮呼
#https://data.epa.gov.tw/dataset/detail/AQX_P_19
library(ggplot2)#R计沮跌谋て更
library(scales)#更scales
library(lubridate)
library(stringr)
options(scipen = 999)

##砞﹚隔畖
setwd("C:/Users/shain/R/tmpe")
list.files()#隔畖郎


x<-list.files()#砞跑计
x[1]

result.data<-read.csv(file = x[1],fileEncoding = "UTF-8-BOM",header = TRUE,sep = ",")
View(result.data)

for(i in 2:434){
  new.data<-read.csv(file = x[i],fileEncoding = "UTF-8-BOM",header = TRUE,sep = ",")
  result.data<-rbind(result.data,new.data)
  print(i)
}
View(result.data)
names(result.data)#琩逆嘿
sl<-subset(result.data,siteid=="6"& itemid=="14") 
#匡拒琘芠代琘代兜ㄒ70(ッ㎝)14(放)
View(sl)#琩┮惠戈


sl$monitordate<-as.character(sl$monitordate)
sl$monitordate<-strptime(sl$monitordate,"%Y-%m-%d",tz=Sys.timezone())
sl$monitordate<-as.POSIXct(sl$monitordate)

sl$concentration<-as.character(sl$concentration) #放锣ΘゅΑ
sl$concentration<-as.character(sl$concentration) #放锣ΘゅΑ
sl$concentration<-as.numeric(sl$concentration)   #放锣Θ计Α
str(sl)#Ω浪琩戈Α

sl$month<-month(sl$monitordate)
sl_4<-subset(sl,month=="4")


sl_4_1986<-subset(sl_4,monitordate<="1986-04-30 CST" & monitordate>"1986-04-01 CST" )
sl_4_1987<-subset(sl_4,monitordate<="1987-04-30 CST" & monitordate>"1987-04-01 CST" )
sl_4_1988<-subset(sl_4,monitordate<="1988-04-30 CST" & monitordate>"1988-04-01 CST" )
sl_4_1989<-subset(sl_4,monitordate<="1989-04-30 CST" & monitordate>"1989-04-01 CST" )
sl_4_1990<-subset(sl_4,monitordate<="1990-04-30 CST" & monitordate>"1990-04-01 CST" )
sl_4_1991<-subset(sl_4,monitordate<="1991-04-30 CST" & monitordate>"1991-04-01 CST" )
sl_4_1992<-subset(sl_4,monitordate<="1992-04-30 CST" & monitordate>"1992-04-01 CST" )
sl_4_1993<-subset(sl_4,monitordate<="1993-04-30 CST" & monitordate>"1993-04-01 CST" )
sl_4_1994<-subset(sl_4,monitordate<="1994-04-30 CST" & monitordate>"1994-04-01 CST" )
sl_4_1995<-subset(sl_4,monitordate<="1995-04-30 CST" & monitordate>"1995-04-01 CST" )
sl_4_1996<-subset(sl_4,monitordate<="1996-04-30 CST" & monitordate>"1996-04-01 CST" )
sl_4_1997<-subset(sl_4,monitordate<="1997-04-30 CST" & monitordate>"1997-04-01 CST" )
sl_4_1998<-subset(sl_4,monitordate<="1998-04-30 CST" & monitordate>"1998-04-01 CST" )
sl_4_1999<-subset(sl_4,monitordate<="1999-04-30 CST" & monitordate>"1999-04-01 CST" )
sl_4_2000<-subset(sl_4,monitordate<="2000-04-30 CST" & monitordate>"2000-04-01 CST" )
sl_4_2001<-subset(sl_4,monitordate<="2001-04-30 CST" & monitordate>"2001-04-01 CST" )
sl_4_2002<-subset(sl_4,monitordate<="2002-04-30 CST" & monitordate>"2002-04-01 CST" )
sl_4_2003<-subset(sl_4,monitordate<="2003-04-30 CST" & monitordate>"2003-04-01 CST" )
sl_4_2004<-subset(sl_4,monitordate<="2004-04-30 CST" & monitordate>"2004-04-01 CST" )
sl_4_2005<-subset(sl_4,monitordate<="2005-04-30 CST" & monitordate>"2005-04-01 CST" )
sl_4_2006<-subset(sl_4,monitordate<="2006-04-30 CST" & monitordate>"2006-04-01 CST" )
sl_4_2007<-subset(sl_4,monitordate<="2007-04-30 CST" & monitordate>"2007-04-01 CST" )
sl_4_2008<-subset(sl_4,monitordate<="2008-04-30 CST" & monitordate>"2008-04-01 CST" )
sl_4_2009<-subset(sl_4,monitordate<="2009-04-30 CST" & monitordate>"2009-04-01 CST" )
sl_4_2010<-subset(sl_4,monitordate<="2010-04-30 CST" & monitordate>"2010-04-01 CST" )
sl_4_2011<-subset(sl_4,monitordate<="2011-04-30 CST" & monitordate>"2011-04-01 CST" )
sl_4_2012<-subset(sl_4,monitordate<="2012-04-30 CST" & monitordate>"2012-04-01 CST" )
sl_4_2013<-subset(sl_4,monitordate<="2013-04-30 CST" & monitordate>"2013-04-01 CST" )
sl_4_2014<-subset(sl_4,monitordate<="2014-04-30 CST" & monitordate>"2014-04-01 CST" )
sl_4_2015<-subset(sl_4,monitordate<="2015-04-30 CST" & monitordate>"2015-04-01 CST" )
sl_4_2016<-subset(sl_4,monitordate<="2016-04-30 CST" & monitordate>"2016-04-01 CST" )
sl_4_2017<-subset(sl_4,monitordate<="2017-04-30 CST" & monitordate>"2017-04-01 CST" )
sl_4_2018<-subset(sl_4,monitordate<="2018-04-30 CST" & monitordate>"2018-04-01 CST" )
sl_4_2019<-subset(sl_4,monitordate<="2019-04-30 CST" & monitordate>"2019-04-01 CST" )
sl_4_2020<-subset(sl_4,monitordate<="2020-04-30 CST" & monitordate>"2020-04-01 CST" )
sl_4_2021<-subset(sl_4,monitordate<="2021-04-30 CST" & monitordate>"2021-04-01 CST" )
#sl_4_2022<-subset(sl_4,monitordate<="2022-04-30 CST" & monitordate>"2022-04-01 CST" )

View(sl_4_1990)

dev.new()
ggplot()+
  geom_line(data=sl_4_1986,aes(x=monitordate,y=concentration,colour = "1986放"),size=1)+#data.frame戈#ч絬瓜
  geom_line(data=sl_4_1987,aes(x=monitordate,y=concentration,colour = "1987放"),size=1)+
  geom_line(data=sl_4_1988,aes(x=monitordate,y=concentration,colour = "1988放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_1989,aes(x=monitordate,y=concentration,colour = "1989放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_1990,aes(x=monitordate,y=concentration,colour = "1990放"),size=1)+
  geom_line(data=sl_4_1991,aes(x=monitordate,y=concentration,colour = "1991放"),size=1)+#data.frame戈#ч絬瓜
  geom_line(data=sl_4_1992,aes(x=monitordate,y=concentration,colour = "1992放"),size=1)+
  geom_line(data=sl_4_1993,aes(x=monitordate,y=concentration,colour = "1993放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_1994,aes(x=monitordate,y=concentration,colour = "1994放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_1995,aes(x=monitordate,y=concentration,colour = "1995放"),size=1)+
  geom_line(data=sl_4_1996,aes(x=monitordate,y=concentration,colour = "1996放"),size=1)+#data.frame戈#ч絬瓜
  geom_line(data=sl_4_1997,aes(x=monitordate,y=concentration,colour = "1997放"),size=1)+
  geom_line(data=sl_4_1998,aes(x=monitordate,y=concentration,colour = "1998放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_1999,aes(x=monitordate,y=concentration,colour = "1999放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_2000,aes(x=monitordate,y=concentration,colour = "2000放"),size=1)+
  geom_line(data=sl_4_2001,aes(x=monitordate,y=concentration,colour = "2001放"),size=1)+#data.frame戈#ч絬瓜
  geom_line(data=sl_4_2002,aes(x=monitordate,y=concentration,colour = "2002放"),size=1)+
  geom_line(data=sl_4_2003,aes(x=monitordate,y=concentration,colour = "2003放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_2004,aes(x=monitordate,y=concentration,colour = "2004放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_2005,aes(x=monitordate,y=concentration,colour = "2005放"),size=1)+
  geom_line(data=sl_4_2006,aes(x=monitordate,y=concentration,colour = "2006放"),size=1)+#data.frame戈#ч絬瓜
  geom_line(data=sl_4_2007,aes(x=monitordate,y=concentration,colour = "2007放"),size=1)+
  geom_line(data=sl_4_2008,aes(x=monitordate,y=concentration,colour = "2008放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_2009,aes(x=monitordate,y=concentration,colour = "2009放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_2010,aes(x=monitordate,y=concentration,colour = "2010放"),size=1)+
  geom_line(data=sl_4_2011,aes(x=monitordate,y=concentration,colour = "2011放"),size=1)+#data.frame戈#ч絬瓜
  geom_line(data=sl_4_2012,aes(x=monitordate,y=concentration,colour = "2012放"),size=1)+
  geom_line(data=sl_4_2013,aes(x=monitordate,y=concentration,colour = "2013放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_2014,aes(x=monitordate,y=concentration,colour = "2014放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_2015,aes(x=monitordate,y=concentration,colour = "2015放"),size=1)+
  geom_line(data=sl_4_2016,aes(x=monitordate,y=concentration,colour = "2016放"),size=1)+#data.frame戈#ч絬瓜
  geom_line(data=sl_4_2017,aes(x=monitordate,y=concentration,colour = "2017放"),size=1)+
  geom_line(data=sl_4_2018,aes(x=monitordate,y=concentration,colour = "2018放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_2019,aes(x=monitordate,y=concentration,colour = "2019放"),size=1)+#ч絬瓜
  geom_line(data=sl_4_2020,aes(x=monitordate,y=concentration,colour = "2020放"),size=1)+
  geom_line(data=sl_4_2021,aes(x=monitordate,y=concentration,colour = "2021放"),size=1)+#data.frame戈#ч絬瓜
  #geom_line(data=sl_4_2022,aes(x=monitordate,y=concentration,colour = "2022放"),size=1)+

  annotate("text",sl_4_1986$monitordate[which.max(sl_4_1986$monitordate)]
           ,y=sl_4_1986$concentration[which.max(sl_4_1986$concentration)]
           ,label=paste(sl_4_1986$monitordate[which.max(sl_4_1986$concentration)]
          ,sl_4_1986$concentration[which.max(sl_4_1986$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_1987$monitordate[which.max(sl_4_1987$monitordate)]
         ,y=sl_4_1987$concentration[which.max(sl_4_1987$concentration)]
         ,label=paste(sl_4_1987$monitordate[which.max(sl_4_1987$concentration)]
        ,sl_4_1987$concentration[which.max(sl_4_1987$concentration)])
         ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_1988$monitordate[which.max(sl_4_1988$monitordate)]
           ,y=sl_4_1988$concentration[which.max(sl_4_1988$concentration)]
           ,label=paste(sl_4_1988$monitordate[which.max(sl_4_1988$concentration)]
                        ,sl_4_1988$concentration[which.max(sl_4_1988$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_1989$monitordate[which.max(sl_4_1989$monitordate)]
           ,y=sl_4_1989$concentration[which.max(sl_4_1989$concentration)]
           ,label=paste(sl_4_1989$monitordate[which.max(sl_4_1989$concentration)]
                        ,sl_4_1989$concentration[which.max(sl_4_1989$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_1990$monitordate[which.max(sl_4_1990$monitordate)]
           ,y=sl_4_1990$concentration[which.max(sl_4_1990$concentration)]
           ,label=paste(sl_4_1990$monitordate[which.max(sl_4_1990$concentration)]
                        ,sl_4_1990$concentration[which.max(sl_4_1990$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_1991$monitordate[which.max(sl_4_1991$monitordate)]
           ,y=sl_4_1991$concentration[which.max(sl_4_1991$concentration)]
           ,label=paste(sl_4_1991$monitordate[which.max(sl_4_1991$concentration)]
                        ,sl_4_1991$concentration[which.max(sl_4_1991$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_1992$monitordate[which.max(sl_4_1992$monitordate)]
           ,y=sl_4_1992$concentration[which.max(sl_4_1992$concentration)]
           ,label=paste(sl_4_1992$monitordate[which.max(sl_4_1992$concentration)]
                        ,sl_4_1992$concentration[which.max(sl_4_1992$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_1993$monitordate[which.max(sl_4_1993$monitordate)]
           ,y=sl_4_1993$concentration[which.max(sl_4_1993$concentration)]
           ,label=paste(sl_4_1993$monitordate[which.max(sl_4_1993$concentration)]
                        ,sl_4_1993$concentration[which.max(sl_4_1993$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_1994$monitordate[which.max(sl_4_1994$monitordate)]
           ,y=sl_4_1994$concentration[which.max(sl_4_1994$concentration)]
           ,label=paste(sl_4_1994$monitordate[which.max(sl_4_1994$concentration)]
                        ,sl_4_1994$concentration[which.max(sl_4_1994$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_1995$monitordate[which.max(sl_4_1995$monitordate)]
           ,y=sl_4_1995$concentration[which.max(sl_4_1995$concentration)]
           ,label=paste(sl_4_1995$monitordate[which.max(sl_4_1995$concentration)]
                        ,sl_4_1995$concentration[which.max(sl_4_1995$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_1996$monitordate[which.max(sl_4_1996$monitordate)]
           ,y=sl_4_1996$concentration[which.max(sl_4_1996$concentration)]
           ,label=paste(sl_4_1996$monitordate[which.max(sl_4_1996$concentration)]
                        ,sl_4_1996$concentration[which.max(sl_4_1996$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_1997$monitordate[which.max(sl_4_1997$monitordate)]
           ,y=sl_4_1997$concentration[which.max(sl_4_1997$concentration)]
           ,label=paste(sl_4_1997$monitordate[which.max(sl_4_1997$concentration)]
                        ,sl_4_1997$concentration[which.max(sl_4_1997$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_1998$monitordate[which.max(sl_4_1998$monitordate)]
           ,y=sl_4_1998$concentration[which.max(sl_4_1998$concentration)]
           ,label=paste(sl_4_1998$monitordate[which.max(sl_4_1998$concentration)]
                        ,sl_4_1998$concentration[which.max(sl_4_1998$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_1999$monitordate[which.max(sl_4_1999$monitordate)]
           ,y=sl_4_1999$concentration[which.max(sl_4_1999$concentration)]
           ,label=paste(sl_4_1999$monitordate[which.max(sl_4_1999$concentration)]
                        ,sl_4_1999$concentration[which.max(sl_4_1999$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2000$monitordate[which.max(sl_4_2000$monitordate)]
           ,y=sl_4_2000$concentration[which.max(sl_4_2000$concentration)]
           ,label=paste(sl_4_2000$monitordate[which.max(sl_4_2000$concentration)]
                        ,sl_4_2000$concentration[which.max(sl_4_2000$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2001$monitordate[which.max(sl_4_2001$monitordate)]
           ,y=sl_4_2001$concentration[which.max(sl_4_2001$concentration)]
           ,label=paste(sl_4_2001$monitordate[which.max(sl_4_2001$concentration)]
                        ,sl_4_2001$concentration[which.max(sl_4_2001$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2002$monitordate[which.max(sl_4_2002$monitordate)]
           ,y=sl_4_2002$concentration[which.max(sl_4_2002$concentration)]
           ,label=paste(sl_4_2002$monitordate[which.max(sl_4_2002$concentration)]
                        ,sl_4_2002$concentration[which.max(sl_4_2002$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2003$monitordate[which.max(sl_4_2003$monitordate)]
           ,y=sl_4_2003$concentration[which.max(sl_4_2003$concentration)]
           ,label=paste(sl_4_2003$monitordate[which.max(sl_4_2003$concentration)]
                        ,sl_4_2003$concentration[which.max(sl_4_2003$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2004$monitordate[which.max(sl_4_2004$monitordate)]
           ,y=sl_4_2004$concentration[which.max(sl_4_2004$concentration)]
           ,label=paste(sl_4_2004$monitordate[which.max(sl_4_2004$concentration)]
                        ,sl_4_2004$concentration[which.max(sl_4_2004$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2005$monitordate[which.max(sl_4_2005$monitordate)]
           ,y=sl_4_2005$concentration[which.max(sl_4_2005$concentration)]
           ,label=paste(sl_4_2005$monitordate[which.max(sl_4_2005$concentration)]
                        ,sl_4_2005$concentration[which.max(sl_4_2005$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2006$monitordate[which.max(sl_4_2006$monitordate)]
           ,y=sl_4_2006$concentration[which.max(sl_4_2006$concentration)]
           ,label=paste(sl_4_2006$monitordate[which.max(sl_4_2006$concentration)]
                        ,sl_4_2006$concentration[which.max(sl_4_2006$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2007$monitordate[which.max(sl_4_2007$monitordate)]
           ,y=sl_4_2007$concentration[which.max(sl_4_2007$concentration)]
           ,label=paste(sl_4_2007$monitordate[which.max(sl_4_2007$concentration)]
                        ,sl_4_2007$concentration[which.max(sl_4_2007$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2008$monitordate[which.max(sl_4_2008$monitordate)]
           ,y=sl_4_2008$concentration[which.max(sl_4_2008$concentration)]
           ,label=paste(sl_4_2008$monitordate[which.max(sl_4_2008$concentration)]
                        ,sl_4_2008$concentration[which.max(sl_4_2008$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2009$monitordate[which.max(sl_4_2009$monitordate)]
           ,y=sl_4_2009$concentration[which.max(sl_4_2009$concentration)]
           ,label=paste(sl_4_2009$monitordate[which.max(sl_4_2009$concentration)]
                        ,sl_4_2009$concentration[which.max(sl_4_2009$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2010$monitordate[which.max(sl_4_2010$monitordate)]
           ,y=sl_4_2010$concentration[which.max(sl_4_2010$concentration)]
           ,label=paste(sl_4_2010$monitordate[which.max(sl_4_2010$concentration)]
                        ,sl_4_2010$concentration[which.max(sl_4_2010$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2011$monitordate[which.max(sl_4_2011$monitordate)]
           ,y=sl_4_2011$concentration[which.max(sl_4_2011$concentration)]
           ,label=paste(sl_4_2011$monitordate[which.max(sl_4_2011$concentration)]
                        ,sl_4_2011$concentration[which.max(sl_4_2011$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2012$monitordate[which.max(sl_4_2012$monitordate)]
           ,y=sl_4_2012$concentration[which.max(sl_4_2012$concentration)]
           ,label=paste(sl_4_2012$monitordate[which.max(sl_4_2012$concentration)]
                        ,sl_4_2012$concentration[which.max(sl_4_2012$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2013$monitordate[which.max(sl_4_2013$monitordate)]
           ,y=sl_4_2013$concentration[which.max(sl_4_2013$concentration)]
           ,label=paste(sl_4_2013$monitordate[which.max(sl_4_2013$concentration)]
                        ,sl_4_2013$concentration[which.max(sl_4_2013$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2014$monitordate[which.max(sl_4_2014$monitordate)]
           ,y=sl_4_2014$concentration[which.max(sl_4_2014$concentration)]
           ,label=paste(sl_4_2014$monitordate[which.max(sl_4_2014$concentration)]
                        ,sl_4_2014$concentration[which.max(sl_4_2014$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2015$monitordate[which.max(sl_4_2015$monitordate)]
           ,y=sl_4_2015$concentration[which.max(sl_4_2015$concentration)]
           ,label=paste(sl_4_2015$monitordate[which.max(sl_4_2015$concentration)]
                        ,sl_4_2015$concentration[which.max(sl_4_2015$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2016$monitordate[which.max(sl_4_2016$monitordate)]
           ,y=sl_4_2016$concentration[which.max(sl_4_2016$concentration)]
           ,label=paste(sl_4_2016$monitordate[which.max(sl_4_2016$concentration)]
                        ,sl_4_2016$concentration[which.max(sl_4_2016$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2017$monitordate[which.max(sl_4_2017$monitordate)]
           ,y=sl_4_2017$concentration[which.max(sl_4_2017$concentration)]
           ,label=paste(sl_4_2017$monitordate[which.max(sl_4_2017$concentration)]
                        ,sl_4_2017$concentration[which.max(sl_4_2017$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2018$monitordate[which.max(sl_4_2018$monitordate)]
           ,y=sl_4_2018$concentration[which.max(sl_4_2018$concentration)]
           ,label=paste(sl_4_2018$monitordate[which.max(sl_4_2018$concentration)]
                        ,sl_4_2018$concentration[which.max(sl_4_2018$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2019$monitordate[which.max(sl_4_2019$monitordate)]
           ,y=sl_4_2019$concentration[which.max(sl_4_2019$concentration)]
           ,label=paste(sl_4_2019$monitordate[which.max(sl_4_2019$concentration)]
                        ,sl_4_2019$concentration[which.max(sl_4_2019$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2020$monitordate[which.max(sl_4_2020$monitordate)]
           ,y=sl_4_2020$concentration[which.max(sl_4_2020$concentration)]
           ,label=paste(sl_4_2020$monitordate[which.max(sl_4_2020$concentration)]
                        ,sl_4_2020$concentration[which.max(sl_4_2020$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  annotate("text",sl_4_2021$monitordate[which.max(sl_4_2021$monitordate)]
           ,y=sl_4_2021$concentration[which.max(sl_4_2021$concentration)]
           ,label=paste(sl_4_2021$monitordate[which.max(sl_4_2021$concentration)]
                        ,sl_4_2021$concentration[which.max(sl_4_2021$concentration)])
           ,colour="red",size=3,vjust=-1.5)+
  
  annotate("text",sl_4_1986$monitordate[which.min(sl_4_1986$monitordate)]
           ,y=sl_4_1986$concentration[which.min(sl_4_1986$concentration)]
           ,label=paste(sl_4_1986$monitordate[which.min(sl_4_1986$concentration)]
                        ,sl_4_1986$concentration[which.min(sl_4_1986$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_1987$monitordate[which.min(sl_4_1987$monitordate)]
           ,y=sl_4_1987$concentration[which.min(sl_4_1987$concentration)]
           ,label=paste(sl_4_1987$monitordate[which.min(sl_4_1987$concentration)]
                        ,sl_4_1987$concentration[which.min(sl_4_1987$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_1988$monitordate[which.min(sl_4_1988$monitordate)]
           ,y=sl_4_1988$concentration[which.min(sl_4_1988$concentration)]
           ,label=paste(sl_4_1988$monitordate[which.min(sl_4_1988$concentration)]
                        ,sl_4_1988$concentration[which.min(sl_4_1988$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_1989$monitordate[which.min(sl_4_1989$monitordate)]
           ,y=sl_4_1989$concentration[which.min(sl_4_1989$concentration)]
           ,label=paste(sl_4_1989$monitordate[which.min(sl_4_1989$concentration)]
                        ,sl_4_1989$concentration[which.min(sl_4_1989$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_1990$monitordate[which.min(sl_4_1990$monitordate)]
           ,y=sl_4_1990$concentration[which.min(sl_4_1990$concentration)]
           ,label=paste(sl_4_1990$monitordate[which.min(sl_4_1990$concentration)]
                        ,sl_4_1990$concentration[which.min(sl_4_1990$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_1991$monitordate[which.min(sl_4_1991$monitordate)]
           ,y=sl_4_1991$concentration[which.min(sl_4_1991$concentration)]
           ,label=paste(sl_4_1991$monitordate[which.min(sl_4_1991$concentration)]
                        ,sl_4_1991$concentration[which.min(sl_4_1991$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_1992$monitordate[which.min(sl_4_1992$monitordate)]
           ,y=sl_4_1992$concentration[which.min(sl_4_1992$concentration)]
           ,label=paste(sl_4_1992$monitordate[which.min(sl_4_1992$concentration)]
                        ,sl_4_1992$concentration[which.min(sl_4_1992$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_1993$monitordate[which.min(sl_4_1993$monitordate)]
           ,y=sl_4_1993$concentration[which.min(sl_4_1993$concentration)]
           ,label=paste(sl_4_1993$monitordate[which.min(sl_4_1993$concentration)]
                        ,sl_4_1993$concentration[which.min(sl_4_1993$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_1994$monitordate[which.min(sl_4_1994$monitordate)]
           ,y=sl_4_1994$concentration[which.min(sl_4_1994$concentration)]
           ,label=paste(sl_4_1994$monitordate[which.min(sl_4_1994$concentration)]
                        ,sl_4_1994$concentration[which.min(sl_4_1994$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_1995$monitordate[which.min(sl_4_1995$monitordate)]
           ,y=sl_4_1995$concentration[which.min(sl_4_1995$concentration)]
           ,label=paste(sl_4_1995$monitordate[which.min(sl_4_1995$concentration)]
                        ,sl_4_1995$concentration[which.min(sl_4_1995$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_1996$monitordate[which.min(sl_4_1996$monitordate)]
           ,y=sl_4_1996$concentration[which.min(sl_4_1996$concentration)]
           ,label=paste(sl_4_1996$monitordate[which.min(sl_4_1996$concentration)]
                        ,sl_4_1996$concentration[which.min(sl_4_1996$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_1997$monitordate[which.min(sl_4_1997$monitordate)]
           ,y=sl_4_1997$concentration[which.min(sl_4_1997$concentration)]
           ,label=paste(sl_4_1997$monitordate[which.min(sl_4_1997$concentration)]
                        ,sl_4_1997$concentration[which.min(sl_4_1997$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_1998$monitordate[which.min(sl_4_1998$monitordate)]
           ,y=sl_4_1998$concentration[which.min(sl_4_1998$concentration)]
           ,label=paste(sl_4_1998$monitordate[which.min(sl_4_1998$concentration)]
                        ,sl_4_1998$concentration[which.min(sl_4_1998$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_1999$monitordate[which.min(sl_4_1999$monitordate)]
           ,y=sl_4_1999$concentration[which.min(sl_4_1999$concentration)]
           ,label=paste(sl_4_1999$monitordate[which.min(sl_4_1999$concentration)]
                        ,sl_4_1999$concentration[which.min(sl_4_1999$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2000$monitordate[which.min(sl_4_2000$monitordate)]
           ,y=sl_4_2000$concentration[which.min(sl_4_2000$concentration)]
           ,label=paste(sl_4_2000$monitordate[which.min(sl_4_2000$concentration)]
                        ,sl_4_2000$concentration[which.min(sl_4_2000$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2001$monitordate[which.min(sl_4_2001$monitordate)]
           ,y=sl_4_2001$concentration[which.min(sl_4_2001$concentration)]
           ,label=paste(sl_4_2001$monitordate[which.min(sl_4_2001$concentration)]
                        ,sl_4_2001$concentration[which.min(sl_4_2001$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2002$monitordate[which.min(sl_4_2002$monitordate)]
           ,y=sl_4_2002$concentration[which.min(sl_4_2002$concentration)]
           ,label=paste(sl_4_2002$monitordate[which.min(sl_4_2002$concentration)]
                        ,sl_4_2002$concentration[which.min(sl_4_2002$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2003$monitordate[which.min(sl_4_2003$monitordate)]
           ,y=sl_4_2003$concentration[which.min(sl_4_2003$concentration)]
           ,label=paste(sl_4_2003$monitordate[which.min(sl_4_2003$concentration)]
                        ,sl_4_2003$concentration[which.min(sl_4_2003$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2004$monitordate[which.min(sl_4_2004$monitordate)]
           ,y=sl_4_2004$concentration[which.min(sl_4_2004$concentration)]
           ,label=paste(sl_4_2004$monitordate[which.min(sl_4_2004$concentration)]
                        ,sl_4_2004$concentration[which.min(sl_4_2004$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2005$monitordate[which.min(sl_4_2005$monitordate)]
           ,y=sl_4_2005$concentration[which.min(sl_4_2005$concentration)]
           ,label=paste(sl_4_2005$monitordate[which.min(sl_4_2005$concentration)]
                        ,sl_4_2005$concentration[which.min(sl_4_2005$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2006$monitordate[which.min(sl_4_2006$monitordate)]
           ,y=sl_4_2006$concentration[which.min(sl_4_2006$concentration)]
           ,label=paste(sl_4_2006$monitordate[which.min(sl_4_2006$concentration)]
                        ,sl_4_2006$concentration[which.min(sl_4_2006$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2007$monitordate[which.min(sl_4_2007$monitordate)]
           ,y=sl_4_2007$concentration[which.min(sl_4_2007$concentration)]
           ,label=paste(sl_4_2007$monitordate[which.min(sl_4_2007$concentration)]
                        ,sl_4_2007$concentration[which.min(sl_4_2007$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2008$monitordate[which.min(sl_4_2008$monitordate)]
           ,y=sl_4_2008$concentration[which.min(sl_4_2008$concentration)]
           ,label=paste(sl_4_2008$monitordate[which.min(sl_4_2008$concentration)]
                        ,sl_4_2008$concentration[which.min(sl_4_2008$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2009$monitordate[which.min(sl_4_2009$monitordate)]
           ,y=sl_4_2009$concentration[which.min(sl_4_2009$concentration)]
           ,label=paste(sl_4_2009$monitordate[which.min(sl_4_2009$concentration)]
                        ,sl_4_2009$concentration[which.min(sl_4_2009$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2010$monitordate[which.min(sl_4_2010$monitordate)]
           ,y=sl_4_2010$concentration[which.min(sl_4_2010$concentration)]
           ,label=paste(sl_4_2010$monitordate[which.min(sl_4_2010$concentration)]
                        ,sl_4_2010$concentration[which.min(sl_4_2010$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2011$monitordate[which.min(sl_4_2011$monitordate)]
           ,y=sl_4_2011$concentration[which.min(sl_4_2011$concentration)]
           ,label=paste(sl_4_2011$monitordate[which.min(sl_4_2011$concentration)]
                        ,sl_4_2011$concentration[which.min(sl_4_2011$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2012$monitordate[which.min(sl_4_2012$monitordate)]
           ,y=sl_4_2012$concentration[which.min(sl_4_2012$concentration)]
           ,label=paste(sl_4_2012$monitordate[which.min(sl_4_2012$concentration)]
                        ,sl_4_2012$concentration[which.min(sl_4_2012$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2013$monitordate[which.min(sl_4_2013$monitordate)]
           ,y=sl_4_2013$concentration[which.min(sl_4_2013$concentration)]
           ,label=paste(sl_4_2013$monitordate[which.min(sl_4_2013$concentration)]
                        ,sl_4_2013$concentration[which.min(sl_4_2013$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2014$monitordate[which.min(sl_4_2014$monitordate)]
           ,y=sl_4_2014$concentration[which.min(sl_4_2014$concentration)]
           ,label=paste(sl_4_2014$monitordate[which.min(sl_4_2014$concentration)]
                        ,sl_4_2014$concentration[which.min(sl_4_2014$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2015$monitordate[which.min(sl_4_2015$monitordate)]
           ,y=sl_4_2015$concentration[which.min(sl_4_2015$concentration)]
           ,label=paste(sl_4_2015$monitordate[which.min(sl_4_2015$concentration)]
                        ,sl_4_2015$concentration[which.min(sl_4_2015$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2016$monitordate[which.min(sl_4_2016$monitordate)]
           ,y=sl_4_2016$concentration[which.min(sl_4_2016$concentration)]
           ,label=paste(sl_4_2016$monitordate[which.min(sl_4_2016$concentration)]
                        ,sl_4_2016$concentration[which.min(sl_4_2016$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2017$monitordate[which.min(sl_4_2017$monitordate)]
           ,y=sl_4_2017$concentration[which.min(sl_4_2017$concentration)]
           ,label=paste(sl_4_2017$monitordate[which.min(sl_4_2017$concentration)]
                        ,sl_4_2017$concentration[which.min(sl_4_2017$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2018$monitordate[which.min(sl_4_2018$monitordate)]
           ,y=sl_4_2018$concentration[which.min(sl_4_2018$concentration)]
           ,label=paste(sl_4_2018$monitordate[which.min(sl_4_2018$concentration)]
                        ,sl_4_2018$concentration[which.min(sl_4_2018$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2019$monitordate[which.min(sl_4_2019$monitordate)]
           ,y=sl_4_2019$concentration[which.min(sl_4_2019$concentration)]
           ,label=paste(sl_4_2019$monitordate[which.min(sl_4_2019$concentration)]
                        ,sl_4_2019$concentration[which.min(sl_4_2019$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2020$monitordate[which.min(sl_4_2020$monitordate)]
           ,y=sl_4_2020$concentration[which.min(sl_4_2020$concentration)]
           ,label=paste(sl_4_2020$monitordate[which.min(sl_4_2020$concentration)]
                        ,sl_4_2020$concentration[which.min(sl_4_2020$concentration)])
           ,colour="blue",size=3,vjust=-1.5)+
  annotate("text",sl_4_2021$monitordate[which.min(sl_4_2021$monitordate)]
           ,y=sl_4_2021$concentration[which.min(sl_4_2021$concentration)]
           ,label=paste(sl_4_2021$monitordate[which.min(sl_4_2021$concentration)]
                        ,sl_4_2021$concentration[which.min(sl_4_2021$concentration)])
           ,colour="blue",size=3,vjust=-1.5)