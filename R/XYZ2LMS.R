XYZ2LMS <- function(XYZ) {
  XYZ <- as.numeric(XYZ)
  tmp <- c(0.15514, 0.54312, -0.03286, -0.15514, 0.45684, 0.03286, 0, 0, 
           0.00801)
  CAT <- matrix(tmp, 3, 3, byrow = T)
  CAT %*% (XYZ)
}