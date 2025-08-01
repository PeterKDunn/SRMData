#' Lime tree foliage
#'
#' The foliage biomass of small-leaved lime trees of different origins.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 385 rows (each tree) and 4 columns:
#' \describe{
#'   \item{Foliage}{The oven-dried foliage biomass, in kg}
#'   \item{DBH}{The diameter at breast height, in cm}
#'   \item{Age}{The age of the tree, in years}
#'   \item{Origin}{The origin of the tree; one of \code{Coppice}, \code{Natural} or \code{Planted}}
#' }
#' 
#' @source 
#' Schepaschenko, Dmitry; Shvidenko, Anatoly; Usoltsev, Vladimir A; 
#' Lakyda, Petro; Luo, Yunjian; Vasylyshyn, Roman; Lakyda, Ivan; Myklush, 
#' Yuriy; See, Linda; McCallum, Ian; Fritz, Steffen; Kraxner, Florian; 
#' Obersteiner, Michael (2017).
#' Biomass tree data base. \doi{doi:10.1594/PANGAEA.871491}
#'  
#' In supplement to: Schepaschenko, D et al. (2017): 
#' A dataset of forest biomass structure for Eurasia. 
#' \emph{Scientific Data}, 4, 170070, \doi{doi:10.1038/sdata.2017.70}
#'  
#' Extracted from <https://doi.pangaea.de/10.1594/PANGAEA.871491>
#'  
#' @references 
#' The source (Schepaschenko et al.) obtains the data from various sources, 
#' which are given there.
#' 
#' @usage 
#' data(Lime)
#' 
#' @examples
#' plot(Foliage ~ DBH, data = Lime, xlab = "Diameter (cm)", ylab = "Foliage biomass (kg)")
#' 

"Lime"
