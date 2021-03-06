% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/cernn.r
\name{loss_quadratic}
\alias{loss_quadratic}
\title{Quadratic Loss}
\usage{
loss_quadratic(S, Sinv)
}
\arguments{
\item{S}{Covariance Estimate}

\item{Sinv}{Reference Precision Matrix}
}
\description{
\code{loss_quadratic} computes the quadratic loss.
}
\examples{
set.seed(12345)
p <- 20
d <- sort(abs(rcauchy(p)),decreasing=TRUE)
sigma <- diag(d)
n <- 20
X <- scale(matrix(rnorm(n*p),n,p),center=FALSE,scale=1/sqrt(d))
alpha <- get_alpha(X)
lambda <- 10**(seq(-2,2,length.out=100))
sol_cv <- select_lambda(X,lambda)
loss_quadratic(sol_cv$S,solve(sigma))
}

