\name{simdatabin}
\alias{simdatabin}

\title{Simulated data with binary outcome}
\usage{
data(simdatabin)
}

\description{
Simulated data with binary outcome Y. The data X and Z are non-informative in the sense that 
they were randomly generated independently of Y.
}


\details{
Simulated data for demonstration purpose only.
}

\value{
A list with the following arguments:
  \item{X}{A 50 x 200 matrix (with observations in rows and variables in columns) whose additional predictive value has to be tested.}
  \item{Y}{A vector of length 50 and type factor}
  \item{Z}{A 50 x 5 matrix  (with observations in rows and variables in columns) on which we want to condition. }
}


\author{
  Anne-Laure Boulesteix (\url{http://www.ibe.med.uni-muenchen.de/organisation/mitarbeiter/020_professuren/boulesteix/eng.html})  
 }  
 
\seealso{\code{\link{simdatasurv}}}

\examples{
# load globalboosttest library
library(globalboosttest)

# load the simulated data with binary outcome
data(simdatabin)
# Visualize the dimensions
dim(simdatabin$X)
dim(simdatabin$Z)
simdatabin$Y
}

\keyword{datasets}

