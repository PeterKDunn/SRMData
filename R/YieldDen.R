#' Yield of onions
#'
#' The mean yields per plant for three onion varieties.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 30 rows (each plants) and 3 columns:
#' \describe{
#'   \item{Yield}{The yield per plant, in grams}
#'   \item{Dens}{The planting density, in plants per square foot}
#'   \item{Var}{The variety; one of \code{1}. \code{2} or \code{3}}
#' }
#' 
#' @source 
#' R. Mead (1970). Plant density and crop yield. 
#' \emph{Applied Statistics}, \bold{19}(1), 64--81.
#' 
#' @usage 
#' data(YieldDen)
#' 
#' @examples
#' plot(Yield ~ Dens, pch = ifelse(Var=="1", 1, ifelse(Var=="2", 2, 3) ), data = YieldDen, xlab = "Density (plants/sq. foot)", ylab = "Yield per plant (g)")
#' legend("topright", pch = 1:3, legend = paste("Variety", 1:3))
#' 

"YieldDen"
