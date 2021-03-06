\name{clusterQuadrant}
\alias{clusterQuadrant}

\title{
  Cluster Quadrants
}
\description{
 This function is used by plot.lisaPerm to assign spatial units to a significant cluster  based on the value of the Local Moran Statistic and standardized scores of the Local Moran Statistic.
}
\usage{
clusterQuadrant(lmoran,signif=.05)
}

\arguments{
  \item{lmoran}{ An object of class \code{lisaPerm} as returned by the functions
    \code{lisa.perm} or \code{bilisa.perm}
}
  \item{signif}{ Significance threshold for the p-values}
}

\details{
 This is an internal function used by \code{plot.lisaPerm}
}



\author{
 Osmar Leandro Loaiza Quintero
}



\seealso{
  \code{\link{lisa.perm}, \link{bilisa.perm}, \link{plot.lisaPerm}}
}
\examples{

data(usinc, package='spdyn')

require(spdep)

lw<-nb2listw(
		poly2nb(usinc,queen=TRUE),style='W'
	)
	
mylisa <- lisa.perm(usinc$X2009,listw=lw)

clusterQuadrant(mylisa)

my_bilisa <- bilisa.perm(x=usinc$X1929, y=usinc$X2009, listw=lw)

clusterQuadrant(my_bilisa)



}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Moran scatterplot }% use one of  RShowDoc("KEYWORDS")

