
SevenOneDollar<-function(date,cup,bottle,unitprice=45){
  fee<-unitprice*cup
  fee<-ifelse(date==1 && bottle==TRUE,unitprice-5,unitprice) *cup
  fee.str<-paste('Total is ',sep='',round(fee),' dollar ','and each cup is ',round(fee)/cup,' dollar')
  return(fee.str)
}
SevenOneDollar(1,4,TRUE)
