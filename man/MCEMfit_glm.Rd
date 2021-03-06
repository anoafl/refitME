% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/refitME_package.R
\name{MCEMfit_glm}
\alias{MCEMfit_glm}
\title{MCEMfit_glm}
\source{
See \url{https://github.com/JakubStats/refitME} for an RMarkdown tutorial with examples.
}
\usage{
MCEMfit_glm(
  mod,
  family,
  sigma.sq.u,
  W = NULL,
  sigma.sq.e = 1,
  B = 50,
  epsilon = 1e-05,
  se.comp = TRUE,
  theta.est = 1,
  shape.est = 1
)
}
\arguments{
\item{mod}{: a glm object (this is the naive fitted model). Make sure the first input predictor variables are the selected error-contaminated variable (i.e., the \code{W}'s).}

\item{family}{: a specified family/distribution.}

\item{sigma.sq.u}{: measurement error variance. A scalar if there is only one error-contaminated variable, otherwise this must stored as a covariance matrix.}

\item{W}{: a matrix of error-contaminated covariates (if not specified, the default assumes all covariates in the naive fitted model are error-contaminated).}

\item{sigma.sq.e}{: variance of the true covariate (X).}

\item{B}{: the number of Monte Carlo replication values (default is set to 50).}

\item{epsilon}{: a set convergence threshold (default is set to 0.00001).}

\item{se.comp}{: a logical to indicate if standard errors for model parameters should be calculated and returned (default is set to \code{TRUE}).}

\item{theta.est}{: an initial value for the dispersion parameter (this is required for fitting negative binomial models).}

\item{shape.est}{: an initial value for the shape parameter (this is required for fitting gamma models).}
}
\value{
\code{MCEMfit_glm} returns model coefficient estimates with standard errors and the effective sample size.
}
\description{
Function for wrapping the MCEM algorithm on GLMs where covariates are subject to measurement error/error-in-variables.
}
\references{
Stoklosa, J., Hwang, W-H., and Warton, D.I. \pkg{refitME}: Measurement Error Modelling using Monte Carlo Expectation Maximization in \proglang{R}.
}
\seealso{
\code{\link{MCEMfit_gam}}
}
\author{
Jakub Stoklosa and David I. Warton.
}
