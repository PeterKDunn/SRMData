#' Noisy miner (birds)
#'
#' The number of noisy miners detected in various 2 hectare transects in buloke 
#' woodland patches within the Wimmera Plains of western Victoria, Australia
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 31 rows (each transect) and 2 columns:
#' \describe{
#'   \item{Eucs}{The number of eucalypt trees in the transect}
#'   \item{Minerab}{The number of noisy miners ('abundance') in three 20 minute surveys in each transect}
#' }
#' 
#' @source 
#' Personal communication from Martine Maron.
#' 
#' @references Martine Maron (2007).
#' Threshold effect of eucalypt density on an aggressive avian competitor. 
#' \emph{Biological Conservation}, \bold{136}, 100--107.
#'  
#' @usage 
#' data(NMiner)
#' 
#' @examples
#' plot(Minerab ~ Eucs, data = NMiner, xlab = "Number eucalypts", ylab = "Number noisy miners")
#' 

"NMiner"
