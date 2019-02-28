#Punto 1a
Wx<-function(n){
  mult<-0
  p <- n
  mult<-mult+1
  i <- 2
  while (i < p+1) {
    j <- i
    while (j < p+1) {
      mult<-mult+1
      j <- j+1
    }
    mult<-mult+1
    i <- i+1
  }
  for (i in p:2){
    for (j in i:2-1) {
      mult<-mult+2
    }
  }
  cat("Mult=",mult,"\tpara una matriz ",n," x",n," por Gauss-Jordan\n")
  mult<-0
  p <- n
  mult<-mult+1
  i <- 2
  while (i < p+1) {
    j <- i
    while (j < p+1) {
      mult<-mult+1
      j <- j+1
    }
    mult<-mult+1
    i <- i+1
  }
  
  cat("Mult=",mult,"\tpara una matriz ",n," x",n," por Gauss\n")
}
Wx(4)