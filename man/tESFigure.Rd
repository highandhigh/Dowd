% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/tESFigure.R
\name{tESFigure}
\alias{tESFigure}
\title{Figure of t - VaR and ES and pdf against L/P}
\usage{
tESFigure(...)
}
\arguments{
\item{...}{The input arguments contain either return data or else mean and
 standard deviation data. Accordingly, number of input arguments is either 4
 or 5. In case there 4 input arguments, the mean and standard deviation of
 data is computed from return data. See examples for details.
 returns Vector of daily geometric return data

 mu Mean of daily geometric return data

 sigma Standard deviation of daily geometric return data

 df Number of degrees of freedom

 cl VaR confidence level and should be scalar

 hp VaR holding period in days and should be scalar}
}
\description{
Gives figure showing the VaR and ES and probability distribution function assuming P/L is t- distributed, for specified confidence level and holding period.
}
\examples{
# Plots lognormal VaR, ES and pdf against L/P data for given returns data
   data <- runif(5, min = 0, max = .2)
   tESFigure(returns = data, df = 10, cl = .95, hp = 90)

   # Plots lognormal VaR, ES and pdf against L/P data with given parameters
   tESFigure(mu = .012, sigma = .03, df = 10, cl = .95, hp = 90)
}
\author{
Dinesh Acharya
}
\references{
Dowd, K. Measuring Market Risk, Wiley, 2007.

Evans, M., Hastings, M. and Peacock, B. Statistical Distributions, 3rd
edition, New York: John Wiley, ch. 38,39.
}

