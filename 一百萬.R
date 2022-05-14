million <- function(cumulative_bill,Month_bill,birthday ){
  library(ggplot2) #匯入處理工具
  library(DescTools)
  library(lubridate)
  Today <-Sys.Date() #目前系統的日期
  All.str<-paste(Today,sep = ' ',birthday)
  Remaining <- 1000000-cumulative_bill
  How_many_month <- 
    round(Remaining/Month_bill,digits = 0)
  TargetDay <- AddMonths(Today, How_many_month)
  TargetDayAge <- as.period(
    interval(birthday, TargetDay),unit = "year")#完成目標年紀‘
  
  dt <- data.frame(A=c(cumulative_bill,Remaining),
                   B=c("cumulative_bill","Remaining"),
                   stringsAsFactors = F)#建立數據匡
  myLabel = as.vector(dt$B)#小時名稱為向量
  myLabel = paste0(myLabel, " ",round(dt$A/sum(dt$A)*100,2),"%")
  dev.new() #開新視窗
  ggplot(dt, aes(x= "", y = A, fill = B)) + #指定Ｙ軸為小時，填滿為名稱
    geom_bar(stat = "identity", width = 1) + #建立長條圖，寬度為1
    coord_polar(theta = "y") +#指定圖形的視角，從Ｙ軸
    labs(x = "", y = "", title = "") + #將Ｘ軸、Ｙ軸、標題列空白
    theme(legend.title = element_blank(),
          legend.position = 'top', #圖形移置上方
          plot.title = element_text(colour = "blue",size=15,face="bold.italic")) + #標題設定
    scale_fill_discrete(##圖例內容為自設
      breaks = dt$B, labels = myLabel)+
    ggtitle(paste("Each month", Month_bill, "dollars,Goal of 1,000,000 will be reached on\n"
                  , TargetDay,'when you are', TargetDayAge))
  
}
million(57000,13000,"2000-12-22")