% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/NormalESHotspots.R
\name{NormalESHotspots}
\alias{NormalESHotspots}
\title{Hotspots for normal ES}
\usage{
NormalESHotspots(vc.matrix, mu, positions, cl, hp)
}
\arguments{
\item{vc.matrix}{Variance covariance matrix for returns}

\item{mu}{Vector of expected position returns}

\item{positions}{Vector of positions}

\item{cl}{Confidence level and is scalar}

\item{hp}{Holding period and is scalar}
}
\value{
Hotspots for normal ES
}
\description{
Estimates the ES hotspots (or vector of incremental ESs) for a
portfolio assuming individual asset returns are normally distributed, for
specified confidence level and holding period.
}
\examples{
# Hotspots for ES for randomly generated portfolio
   vc.matrix <- matrix(rnorm(16),4,4)
   mu <- rnorm(4,.08,.04)
   positions <- c(5,2,6,10)
   cl <- .95
   hp <- 280
   NormalESHotspots(vc.matrix, mu, positions, cl, hp)
}
\author{
Dinesh Acharya
}
\references{
Dowd, K. Measuring Market Risk, Wiley, 2007.
}

