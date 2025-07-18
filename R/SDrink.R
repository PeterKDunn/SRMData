#' Soft drink delivery
#'
#' The time taken to deliver soft drinks to vending machines.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 25 rows (each delivery) and 3 columns:
#' \describe{
#'   \item{Time}{The time taken to service the vending machine, in minutes}
#'   \item{Cases}{The number of cases of soft drink stocked}
#'   \item{Distance}{The distance walked by the driver to service the vending machine, in feet}
#' }
#' 
#' @source
#' The data were obtained electronically from 
#' OzDASL <http://www.statsci.org/data/>. 
#' 
#' @references D. C. Montgomery and E. A. Peck (1992).
#' \emph{Introduction to Regression Analysis}. Wiley, New York. Example 4.1
#'  
#' @usage 
#' data(SDrink)
#' 
#' @examples
#' plot(Time ~ Distance, data = SDrink, xlab = "Distance (feet)", ylab = "Time to deliver (mins)")
#' 

"SDrink"
