#Punto 1b
tol<-0.01
A <- matrix(c(2.6,0.3,2.4,6.2,7.7,0.4,4.7,1.4,5.1,9.9,9.5,1.5,6.0,7.0,8.5,4.8),byrow=T,nrow=4,ncol=4)
b <- matrix(c(4,5,6,1),nrow=4,ncol=1)
p <- nrow(A)
(U.pls <- cbind(A,b))
U.pls[1,] <- U.pls[1,]/U.pls[1,1]
i <- 2
while (i < p+1) {
  j <- i
  while (j < p+1) {
    U.pls[j, ] <- U.pls[j, ] - U.pls[i-1, ] * U.pls[j, i-1]
    j <- j+1
  }
  while (U.pls[i,i] == 0) {
    U.pls <- rbind(U.pls[-i,],U.pls[i,])
  }
  U.pls[i,] <- U.pls[i,]/U.pls[i,i]
  i <- i+1
}
for (i in p:2){
  for (j in i:2-1) {
    U.pls[j, ] <- U.pls[j, ] - U.pls[i, ] * U.pls[j, i]
  }
}
U.pls

B<-matrix(c(2.6,0.3,2.4,6.2,7.7,0.4,4.7,1.4,5.1,9.9,9.5,1.5,6.1,7.0,8.5,4.8),byrow=T,nrow=4,ncol=4)
b <- matrix(c(4,5,6,1),nrow=4,ncol=1)
p <- nrow(A)
(U.pls <- cbind(B,b))
U.pls[1,] <- U.pls[1,]/U.pls[1,1]
i <- 2
while (i < p+1) {
  j <- i
  while (j < p+1) {
    U.pls[j, ] <- U.pls[j, ] - U.pls[i-1, ] * U.pls[j, i-1]
    j <- j+1
  }
  while (U.pls[i,i] == 0) {
    U.pls <- rbind(U.pls[-i,],U.pls[i,])
  }
  U.pls[i,] <- U.pls[i,]/U.pls[i,i]
  i <- i+1
}
for (i in p:2){
  for (j in i:2-1) {
    U.pls[j, ] <- U.pls[j, ] - U.pls[i, ] * U.pls[j, i]
  }
}
U.pls
