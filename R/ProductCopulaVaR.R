#' Bivariate Product Copule VaR
#' 
#' Derives VaR using bivariate Product or logistic copula with specified inputs 
#' for normal marginals.
#' 
#' @param mu1 Mean of Profit/Loss on first position 
#' @param mu2 Mean of Profit/Loss on second position
#' @param sigma1 Standard Deviation of Profit/Loss on first position
#' @param sigma2 Standard Deviation of Profit/Loss on second position
#' @param cl VaR onfidece level
#' @return Copula based VaR
#' @references Dowd, K. Measuring Market Risk, Wiley, 2007.
#' 
#' Dowd, K. and Fackler, P. Estimating VaR with copulas. Financial Engineering
#' News, 2004.
#'
#' 
#' @author Dinesh Acharya
#' @examples
#' 
#'    # VaR using bivariate Product for X and Y with given parameters:
#'    ProductCopulaVaR(.9, 2.1, 1.2, 1.5, .95)
#'
#' @export
ProductCopulaVaR <- function(mu1, mu2, sigma1, sigma2, cl){
  
  p <- 1 - cl # p is tail probability or cdf
  
  # Compute portfolio mean and sigma (NB: These are used here to help compute
  # initial bounds automatically)
  portfolio.mu <- mu1 + mu2
  portfolio.variance <- sigma1^2+sigma2^2
  portfolio.sigma <- sqrt(portfolio.variance)
  
  # Specify bounds arbitrarily (NB: Would need to change manually if these were
  # inappropriate)
  L <- -portfolio.mu - 5 * portfolio.sigma
  fL <- CdfOfSumUsingProductCopula(L, mu1, mu2, sigma1, sigma2) - p
  sign.fL <- sign(fL)
  U <- -portfolio.mu + 5 *  portfolio.sigma
  fU <- CdfOfSumUsingProductCopula(U, mu1, mu2, sigma1, sigma2) - p
  sign.fU <- sign(fU)
  if (sign.fL == sign.fU){
    stop("Assumed bounds do not include answer")
  }
  
  # Bisection Algorithm
  tol <- 0.0001 # Tolerance level (NM: change manually if desired)
  while (U - L > tol){
    x <- (L + U) / 2 # Bisection carried out in terms of P/L quantiles or minus VaR
    cum.prob <- CdfOfSumUsingProductCopula(x, mu1, mu2, sigma1, sigma2)
    fx <- cum.prob - p
    if (sign(fx) == sign(fL)){
      L <- x
      fL <- fx
    } else {
      U <- x
      fU <- fx
    }
  }
  y <- -x # VaR is negative of terminal x-value or P/L quantile
  
  return(y)
}
