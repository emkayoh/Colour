Chipsxy <- function(){
  tmp <- read.table("data/ChipsUnderC.txt")
xyz <- tmp[, 2:4]
uv <- t(apply(xyz[, 1:2], 1, xy2uv))
XYZc <- tmp[, 5:7] # under c according to MJ but if taken from Finnish data they are under d65!
list(xyz=xyz, uv=uv,XYZc=XYZc)
}