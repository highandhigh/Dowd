% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/HSVaR.R
\name{HSVaR}
\alias{HSVaR}
\title{Value at Risk of a portfolio using Historical Estimator}
\usage{
HSVaR(Ra, Rb)
}
\arguments{
\item{Ra}{Vector corresponding to profit and loss distribution}

\item{Rb}{Scalar corresponding to VaR confidence levels.}
}
\value{
Value at Risk of the portfolio
}
\description{
Estimates the Value at Risk (VaR) using historical estimator
approach for the specified range of confidence levels and the holding
period implies by data frequency.
}
\examples{
# To be added
   a <- rnorm(1000) # Payoffs of random portfolio
   HSVaR(a, .95)
}
\author{
Dinesh Acharya
}
\references{
Dowd, K. Measuring Market Risk, Wiley, 2007.

Jorion, P. Value at Risk: The New Benchmark for Managing Financial Risk.
McGraw-Hill, 2006

Cont, R., Deguest, R. and Scandolo, G. Robustness and sensitivity analysis
of risk measurement procedures. Quantitative Finance, 10(6), 2010, 593-606.

Artzner, P., Delbaen, F., Eber, J.M. and Heath, D. Coherent Risk Measures
of Risk. Mathematical Finance 9(3), 1999, 203.

Foellmer, H. and Scheid, A. Stochastic Finance: An Introduction in Discrete
Time. De Gryuter, 2011.
}

