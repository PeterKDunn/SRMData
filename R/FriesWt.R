#' McDonald's fries
#'
#' The weights of McDonald's large fries.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 32 observations.
#' The data give the weights of large fries bought from a McDonald (target: 171g).
#' \describe{
#'   \item{FriesWt}{The weight of 32 large French fry order at McDonalds, in grams}
#' }
#' @source 
#' The data were extracted by reading Figure 2 in:
#'  Wetzel, Nathan (2005).
#'  "McDonald's french fries: Would you like small or large fries?"
#'  \emph{STATS}, \bold{43}, 12--14.
#' 
#' @usage 
#' data(FriesWt)
#' 
#' @examples
#' hist(FriesWt$FriesWt, ylab = "Number of orders", xlab = "Weight of large fries (g)")

"FriesWt"
