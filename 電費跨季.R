#hw1
power<-function (startdate, enddate, Q , public, houses) {
  #匯入套件
  library("lubridate")
  
  #起始日、結束日
  startdate<- as.Date(startdate, format="%Y-%m-%d")
  enddate<- as.Date (enddate, format="%Y-%m-%d")
  
  
  if(month(startdate)%in% c(6,7,8,9) & month(enddate) %in% c(6,7,8,9)){
    summerdays<- difftime(enddate,startdate, units="days")
    normaldays = 0
    summerdays<-as.integer (summerdays)
  }
  else if (month (startdate)%in% c(6,7,8,9) & month (enddate)%in% c(10,11,12)){
    summerdays<-difftime("2021-10-01",startdate,units="days")
    normaldays<-difftime(enddate,"2021-10-01",units="days")
    summerday<-as.integer (summerdays)
    summerdays<-summerday + 1
    normalday<-as.integer (normaldays)
    normaldays<-normalday + 1
  }
  else if (month(startdate)%in% c(1,2,3,4,5) & month (enddate)%in% c(6,7,8,9)){
    summerdays<-difftime(enddate,"2021-06-01",units="days")
    normaldays<-difftime("2021-06-01", startdate, units="days")
    summerday<-as.integer (summerdays)
    summerdays<-summerday+1
    normalday<-as.integer(normaldays)
    normaldays<-normalday+1
  }
  else{
    normaldays<-difftime(enddate,startdate,units="days")
    summerdays = 0
    normaldays<-as.integer(normaldays)
  }
  days <-summerdays + normaldays
  s <-summerdays/days
  n <- normaldays/days
  publicprice<-public/houses
  
  sa <- 240 * 1.63
  sb <- 420 * 2.38
  sc <- 340 * 3.52
  sd <- 400 * 4.80
  se <- 600 * 5.66
  
  na <- 240 * 1.63
  nb <- 420 * 2.10
  nc <- 340 * 2.89
  nd <- 400 * 3.94
  ne <- 600 * 4.60
  
  if (Q > 2000) {
    total <- s*(sa+sb+sc+sd+se+(Q-1000)*6.41)+n*(na+nb+nc+nd+ne+(Q-1000)*5.03)
  } else if (Q > 1400 & Q <= 2000) {
    total <- s*(sa+sb+sc+sd+(Q-1400)*5.66)+n*(na+nb+nc+nd+(Q-1400)*4.60)
  } else if (Q > 1000 & Q <= 1400) {
    total <- s*(sa+sb+sc+(Q-1000)*4.40)+n*(na+nb+nc+(Q-1000)*3.94)
  } else if (Q > 660 & Q <= 1000) {
    total <- s*(sa+sb+(Q-660)*3.52)+n*(na+nb+(Q-660)*2.89)
  } else if (Q > 240 & Q <= 660) {
    total <- s*(sa+(Q-240)*2.38)+n*(na+(Q-240)*2.10)
  } else {
    total <- Q * 1.63
  }
  print (round(total))
  print (days)
}
power('2021-05-07','2021-07-03',741,40,33)
power('2021-07-07','2021-09-03',1000,40,33)

