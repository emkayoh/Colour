create_ill<-function(xyz){
# creates an illuminant spectra from tristimulus values
CMF <- getCMF()
PfR <- Parki(3)
  Base <- MASS::ginv(t(CMF) %*% PfR * 5)

  tmp <- xyz/sum(xyz)
  
  XYZq <- tmp/tmp[2]
  q <- as.numeric(t(Base %*% (XYZq)) %*% t(PfR))
  q
}