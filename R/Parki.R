################ Load the Parkinnen functions (with D65)
Parki<- function(N = 3){
  
tmp <- read.table("data/Parkinnen.txt")
Pf <- as.matrix(tmp)

PfR <- Pf[, 1:N]
PfR
}