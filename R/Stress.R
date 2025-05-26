#' Stress before surgery
#'
#' Stress at two time-points before surgery.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 19 rows and 2 columns:
#' \describe{
#'   \item{BeforeHours}{beta-endorphin concentrations measured 12--14 hours before surgery, in fmol/ml}
#'   \item{BeforeMins}{beta-endorphin concentrations measured 10 minutes before surgery, in fmol/ml}
#' }
#' @source 
#' D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway, and E. Ostrowski (1994) 
#' A Handbook of Small Data Sets, London: Chapman and Hall. Dataset 232.
#' 
#' @references
#' The original source is given as Hoaglin, D. C., Mosteller, F. 
#' and Tukey. J. W. 1985.
#' \emph{Exploring data tables, trends and shapes}.
#'  New York: John Wiley & Sons.
#' 
#' @usage 
#' data(Stress)
#' 
#' @examples
#' with(Stress, hist(BeforeMins - BeforeHours, xlab = "Stress increase: hours before compared to minutes before"))
#' 

"Stress"
