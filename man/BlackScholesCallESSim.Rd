% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/BlackScholesCallESSim.R
\name{BlackScholesCallESSim}
\alias{BlackScholesCallESSim}
\title{ES of Black-Scholes call using Monte Carlo Simulation}
\usage{
BlackScholesCallESSim(amountInvested, stockPrice, strike, r, mu, sigma,
  maturity, numberTrials, cl, hp)
}
\arguments{
\item{amountInvested}{Total amount paid for the Call Option and is positive
(negative) if the option position is long (short)}

\item{stockPrice}{Stock price of underlying stock}

\item{strike}{Strike price of the option}

\item{r}{Risk-free rate}

\item{mu}{Expected rate of return on the underlying asset and is in
annualised term}

\item{sigma}{Volatility of the underlying stock and is in annualised
term}

\item{maturity}{The term to maturity of the option in days}

\item{numberTrials}{The number of interations in the Monte Carlo simulation
exercise}

\item{cl}{Confidence level for which ES is computed and is scalar}

\item{hp}{Holding period of the option in days and is scalar}
}
\value{
ES
}
\description{
Estimates ES of Black-Scholes call Option using Monte Carlo simulation
}
\examples{
# Market Risk of American call with given parameters.
   BlackScholesCallESSim(0.20, 27.2, 25, .16, .2, .05, 60, 30, .95, 30)
}
\author{
Dinesh Acharya
}
\references{
Dowd, Kevin. Measuring Market Risk, Wiley, 2007.

Lyuu, Yuh-Dauh. Financial Engineering & Computation: Principles,
Mathematics, Algorithms, Cambridge University Press, 2002.
}

