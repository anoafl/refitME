% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/refitME_package.R
\name{MCEMfit_PPM}
\alias{MCEMfit_PPM}
\title{MCEMfit_PPM}
\source{
See \url{https://github.com/JakubStats/refitME} for an RMarkdown tutorial with examples.
}
\usage{
MCEMfit_PPM(mod, sigma.sq.u, W = NULL, sigma.sq.e = 1, B = 50, epsilon = 1e-05)
}
\arguments{
\item{mod}{: a glm object (this is the naive fitted model). Make sure the first input predictor variables are the selected error-contaminated variable (i.e., the \code{W}'s).}

\item{sigma.sq.u}{: measurement error variance. A scalar if there is only one error-contaminated variable, otherwise this must stored as a covariance matrix.}

\item{W}{: a matrix of error-contaminated covariates (if not specified, the default assumes all covariates in the naive fitted model are error-contaminated).}

\item{sigma.sq.e}{: variance of the true covariate (X).}

\item{B}{: the number of Monte Carlo replication values (default is set to 50).}

\item{epsilon}{: a set convergence threshold (default is set to 0.00001).}
}
\value{
\code{MCEMfit_PPM} returns model coefficient estimates (no standard errors) and the effective sample size.
}
\description{
Function for fitting a Point process model (PPM) using the MCEM algorithm where covariates have measurement error.
}
\references{
Stoklosa, J., Hwang, W-H., and Warton, D.I. \pkg{refitME}: Measurement Error Modelling using Monte Carlo Expectation Maximization in \proglang{R}.
}
\seealso{
\code{\link{MCEMfit_glm}}
}
\author{
Jakub Stoklosa and David I. Warton.
}
