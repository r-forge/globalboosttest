\name{simdatasurv}
\alias{simdatasurv}

\title{Simulated data with survival outcome}
\usage{
data(simdatasurv)
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
  \item{status}{A numeric vector of length 50 giving the survival status with values 0 (alive) and 1 (dead).}
  \item{time}{A numeric vector of length 50 giving the observation time (which equals the survival time for subjects with \code{status=1})}
  \item{Z}{A 50 x 5 matrix  (with observations in rows and variables in columns) on which we want to condition. }
}




\author{
  Anne-Laure Boulesteix (\url{http://www.ibe.med.uni-muenchen.de/organisation/mitarbeiter/020_professuren/boulesteix/eng.html}),  
          }


\seealso{\code{\link{simdatabin}}}

\examples{
# load globalboosttest library
library(globalboosttest)

# load the simulated data with survival outcome
data(simdatasurv)
# Visualize the dimensions
dim(simdatasurv$X)
dim(simdatasurv$Z)
simdatasurv$status
simdatasurv$time
}

\keyword{datasets}

