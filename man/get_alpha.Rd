% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/cernn.r
\name{get_alpha}
\alias{get_alpha}
\title{Compute alpha parameter for covariance regularization.}
\usage{
get_alpha(X)
}
\arguments{
\item{X}{The data matrix whose rows are observations and columns are covariates.}
}
\description{
\code{get_alpha} computes the alpha parameter that shrinks eigenvalues of the sample covariance to their grand mean.
}
\examples{
n <- 10
p <- 5
set.seed(12345)
X <- matrix(rnorm(n*p),n,p)
get_alpha(X)
}

