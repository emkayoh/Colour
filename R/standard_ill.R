standard_ill<-function(){
  Sm <- read.table("data/SPDNorm.txt")
  D65 <- Sm[, 4]
  C <- Sm[, 3]
  A <- Sm[, 2]
  nm <- Sm[,1]
  list(nm=nm, A=A, C=C, D65=D65)
}