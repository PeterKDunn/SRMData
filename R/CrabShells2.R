#' Crab shells and anemones (2x2)
#' 
#' The placement of anemones on their shells by hermit crabs.
#' 
#' @docType data
#' 
#' @keywords datasets
#' 
#' @format A data frame with 4 rows and 3 columns:
#' \describe{
#'   \item{ShellColumn}{The column where anemone placed; 
#'         one of \code{1} (Side) or \code{2} (Central)}
#'   \item{ShellRow}{The row where anemone placed; 
#'         one of \code{1} (Side) or \code{2} (Central)}
#'   \item{Counts}{The number of anemones in the indicated sector on the shell}
#' }
#' 
#' @details 
#' The data provide the number of anemones placed on their shell by 
#' hermit crabs in indicated regions.
#' Roughly, the shells are divided into a 3x3 grid of approximately 
#' equal areas (see \code{CrabShell3}) but here the 3x3 table has been 
#' collapsed to a 2x2 table.
#' 
#' @source 
#' Brooks, W. R. (1989). 
#' Hermit crabs alter sea anemone placement patterns for shell balance 
#' and reduced predation. 
#' \emph{Journal of Experimental Marine Biology and Ecology}, 
#' \bold{132}(2), 109--121.
#' 
#' @usage data(CrabShells2)

"CrabShells2"
