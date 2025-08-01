#' Price of second-hand Corollas
#'
#' The price of second-hand Corollas advertised on Gum Tree (Australia).
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 45 rows (one per vehicle) and 3 columns:
#' \describe{
#'   \item{Year}{the year of manufacture of the vehicle}
#'   \item{Price}{the advertised price, in AUD}
#'   \item{Age}{the age of the vehicle, in years}
#' }
#' @source 
#' Collected by Peter K. Dunn, 2014, from www.gumtree.com.au
#' 
#' @usage 
#' data(Corollas)
#' 
#' @examples
#' plot(Price ~ Age, data = Corollas, xlab = "Age (years)", ylab = "Price (thousands $)")
#' plot(Price ~ Age, data = subset(Corollas, Price < 30000 & Age < 16), xlab = "Age (years)", ylab = "Price (thousands $)")

"Corollas"
