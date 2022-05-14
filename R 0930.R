showprecent<-function(x){
  x.digits<-round(x*100,digits=2)
  x.precent<-paste(x.digits,sep='',"%")
  return(x.precent)
}
showprecent(0.7845)

ls()

Martfee<-function(cup,unitprice=45){
  fee<-unitprice
  if(cup>10){
    fee<-cup*unitprice*0.77
  }
  else {
    fee<-cup*unitprice*1.00
  }
  round(fee)
}
Martfee(12)


Martfee<-function(cup,unitprice=45){
  fee<-unitprice
  fee<-ifelse(cup>10,0.77,1)*cup*unitprice
  round(fee)
}
cupvetor<-c(1,2,3,7,89,24)
Martfee(cupvetor)
round(Martfee(cupvetor)/cupvetor)


Martfee<-function(cup,unitprice=45){
  fee<-unitprice*cup
  if(cup>10){
    fee<-cup*unitprice*0.77
  }
  else if(cup<10 | cup>1){
    fee<-unitprice+(cup-1)*unitprice*0.7
  }
  else {
    fee<-cup*unitprice*1.00
  }
  round(fee/cup)
}
Martfee(9)


fee