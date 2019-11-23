\name{lisa.perm}
\alias{lisa.perm}

\title{
 Permutation test
}

\description{
 Computes a permutation test to assess the statistical significance of 
 Local Indicators of Spatial Association --LISA.
}

\usage{
lisa.perm(x,listw,perm=999,FUN=mean,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
    A numeric vector
}
  \item{listw}{A \code{listw} object as produced by \code{\link{nb2listw}} or
  \code{\link{mat2listw}}. A list of spatial weights
}
  \item{perm}{ Number of permutations}
  \item{FUN}{ By defautl \code{FUN=mean}. In general, a function to compute the central tendency of the data. It should return a scalar. See \code{notes}
  }
  \item{...}{ Further arguments passed to \code{FUN}}
}


\details{
  This function implements a conditional permutation test to assess the statistical significance of the LISA. This is a distribution free test that overcomes the limitations of the standard assumption of normality.
}

\value{
Returns a numeric matrix
  \item{Ii}{ Values of the Local Moran Statistics}
  \item{p-val}{ P-values}
  \item{Zi}{ Z scores or standardized scores}
}

\references{
  %% ~put references to the literature/web site here ~
}

\author{
  Osmar Leandro Loaiza Quintero
}
\note{
  There is no theoretical nor simulation work assessing the behavior of the Local Moran Staistic when the measure of central tendency is different from the
  mean.
}



\seealso{
 \code{\link{bilisa.perm}, \link{plot.lisaPerm}}
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x) 
{
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Local Indicators of Spatial Association }
\keyword{ Local Moran Statistic }
\keyword{ Permutation test}