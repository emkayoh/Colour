create_ill<-function(xyz){
# creates an illuminant spectra from tristimulus values
if(is.character(xyz)){
  Sxyz <- c(0.2319, 0.2318, 0.5363)
  Rxyz <- c(0.373006879, 0.287003124, 0.339989997)
  Gxyz <- c(0.251, 0.343, 0.406)
  Yxyz <- c(0.357993773, 0.424997231, 0.217008996)
  Vxyz <- c(0.263000003, 0.208000044, 0.528999953)
  Axyz <- c(0.4476, 0.4075, 0.1449)
  }
  Base <- ginv(t(CMF) %*% PfR * 5)
  
  qxyz<- Sxyz
  tmp <- qxyz/sum(qxyz)
  
  XYZq <- tmp/tmp[2]
  q <- as.numeric(t(Base %*% (XYZq)) %*% t(PfR))
  
}