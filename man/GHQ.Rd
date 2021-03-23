\name{GHQ}
\alias{GHQ}
\title{
Gaussian Hermite Quadrature with prunning
}
\description{
This function is used to obtain quadrature points to approximate an integral
}
\usage{
GHQ(n, ndim, pruning = TRUE)
}
\arguments{
  \item{n}{number of quadrature points}
  \item{ndim}{number of integrals or dimension problem}
  \item{pruning}{a logical indicating whether you want pruning approach, by default is TRUE}
}
\value{
  \item{nodes}{nodes}
  \item{weights}{weights}
  \item{product}{product weights}
}
\references{
Hernandez, F., Usuga, O. and Giampaoli, V. (2014). Improving the Adaptive Gaussian Quadrature. Journal of Statistical Software, submitting.
}
\author{Freddy Hernandez Barajas}
\examples{
# Comparing the number of points in a two-dimensional case
require(GHQp)
par(mfrow=c(2,2))
plot(GHQ(15,2,FALSE)$nodes,pch=20,xlab='',ylab='',
     main='Without pruning, n=15 and q=2')
plot(GHQ(15,2,TRUE)$nodes, pch=20,xlab='',ylab='',
     main='With pruning, n=15 and q=2')

# Comparing the number of points in a three-dimensional case
require(scatterplot3d)
datos <- GHQ(15,3,FALSE)$nodes
scatterplot3d(datos, type="p", highlight.3d=TRUE,
              angle=55, scale.y=0.7, pch=16,
              main='Without pruning, n=15 and q=3', 
              cex.symbols=0.4,xlab='',ylab='',zlab='')
datos <- GHQ(15,3,TRUE)$nodes
scatterplot3d(datos, type="p", highlight.3d=TRUE,
              angle=55, scale.y=0.7, pch=16,
              main='With pruning, n=15 and q=3', 
              cex.symbols=0.4,xlab='',ylab='',zlab='')
}
\keyword{optimize}
