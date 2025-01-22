#' Battery performance
#'
#' Battery life for two brands of batteries.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 108 rows (one per battery) and 4 columns:
#' \describe{
#'   \item{Brand}{One of \code{Energizer} or \code{Ultracell} (ALDI home brand))}
#'   \item{Voltage}{The voltages at which times were recorded}
#'   \item{Time}{The time taken for 1.5V battery to reduce to the given voltage, in hours}
#'   \item{Battery}{Which battery in the sequence}
#' }
#' @source 
#' Dunn, Peter K. 2013. Comparing the Lifetimes of Two Brands of Batteries. 
#' \emph{Journal of Statistical Education}, \bold{21} (1).
#' 
#' @usage 
#' data(Battery)

"Battery"

