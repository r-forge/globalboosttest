\name{globalboosttest}
\alias{globalboosttest}

\title{Testing the additional predictive value of high-dimensional data}
\usage{
globalboosttest(X,Y,Z=NULL,nperm=1000,mstop=1000,mstopAIC=FALSE,pvalueonly=TRUE,plot=FALSE,...)
}
\arguments{
  \item{X}{A n x p matrix or data frame with observations in rows and variables in columns, whose additional predictive value has to be tested.}
  \item{Y}{Either a n-vector of type factor (if the prediction outcome is binary), or a numeric vector of length n (if the prediction outcome is numeric and uncensored), or a \code{Surv} object (if the prediction outcome is a survival time).}
  \item{Z}{A n x q matrix or data frame with observations in rows and variables in columns, on which we want to condition. Note that q should be smaller than n. If \code{Z=NULL}, the function \code{globalboosttest} simply assesses the predictive value of \code{X} without conditioning.}
  \item{nperm}{The number of permutations used to derived the p-value.}
  \item{mstop}{A numeric vector giving the number(s) of boosting steps at which the p-value has to be calculated.}
  \item{mstopAIC}{If \code{TRUE}, the best number of boosting steps is determined based on AIC using the non-permuted data from the range \code{1:max(mstop)}.}
  \item{pvalueonly}{Should the function return only the permutation p-value or also the risk for all numbers of boosting steps and all permutations?}
  \item{plot}{If \code{TRUE}, a plot representing the minimized criterion for real data (in black) and permuted data (in grey).}
  \item{...}{Further arguments to be passed to the \code{plot} function if \code{plot=TRUE}.}
}
\description{
The function \code{globalboosttest} implements a permutation-based testing procedure to globally test the (additional) predictive value of a large set of predictors given that a small set of predictors is already available.
}


\details{
See Boulesteix and Hothorn (2009) for details on the methodology.
If \code{mstopAIC=TRUE}, the number of boosting steps is chosen from 1 to \code{max(mstop)} independently of the specific values
included in the vector \code{mstop}.
}

\value{
A list with the following arguments
  \item{riskreal}{A numeric vector of length \code{max(mstop)} giving the risk computed from the original data set 
  with mstop from 1 to \code{max(mstop)} (if \code{pvalueonly=FALSE}).}
  \item{riskperm}{A \code{nperm}x\code{max(mstop)} matrix giving the risk computed from the \code{nperm} permuted data sets
  with mstop from 1 to \code{max(mstop)} (if \code{pvalueonly=FALSE}).}
    \item{mstopAIC}{The number of boosting steps selected using the AIC-based procedure (if \code{mstopAIC=TRUE}).}

  
   \item{pvalue}{A numeric vector of length \code{length(mstop)} (if \code{mstopAIC=FALSE}) or \code{length(mstop)+1} (if \code{mstopAIC=TRUE}) giving the permutation-pvalues obtained for each considered value of \code{mstop}}

 }

\references{
  A. L. Boulesteix and Torsten Hothorn (2010). Testing the additional predictive value of high-dimensional data. BMC Bioinformatics 10:78.
}

\author{
  Anne-Laure Boulesteix (\url{http://www.ibe.med.uni-muenchen.de/organisation/mitarbeiter/020_professuren/boulesteix/eng.html}),  
  
  
  Torsten Hothorn (\url{http://www.statistik.lmu.de/~hothorn/})
  
 

}
\seealso{}

\examples{
# load globalboosttest library
library(globalboosttest)

# load the simulated data with binary outcome
data(simdatabin)
attach(simdatabin)
# Test with 25 permutations
test<-globalboosttest(X=X,Y=Y,Z=Z,nperm=25,mstop=c(100,500,1000))


# load the simulated data with survival outcome
data(simdatasurv)
attach(simdatasurv)
# Test with 25 permutations
test<-globalboosttest(X=X,Y=Surv(time,status),Z=NULL,nperm=25,mstop=c(100,500,1000),mstopAIC=FALSE)

}

\keyword{htest}

