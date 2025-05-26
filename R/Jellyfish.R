#' Length and width of jellyfish
#'
#' Width and length of jellyfish at two locations.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 46 rows (one per jellyfish) and 3 columns:
#' \describe{
#'   \item{Location}{the location of the jellyfish; one of \code{Dangar} (Dangar Island) or \code{Salamander} (Salamander Bay)}
#'   \item{Width}{the width (breadth) of the jellyfish, in mm}
#'   \item{Length}{the length of the jellyfish, in mm}
#' }
#' @source 
#' D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway, and E. Ostrowski (1994) 
#' A Handbook of Small Data Sets, London: Chapman and Hall. Dataset 72.
#' 
#' @references
#' Lunn, A. D. and McNeil, D. R. (1991).
#' \emph{Computer-Interactive Data Analysis}, Chichester: John Wiley and Sons.
#' 
#' @usage 
#' data(Jellyfish)
#' 
#' @examples
#' boxplot(Width ~ Location, data = Jellyfish, ylab = "Breadth (mm)")
#' 

"Jellyfish"
