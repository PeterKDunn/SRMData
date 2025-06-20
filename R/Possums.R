#' Possum weights
#'
#' Sex and weight of possums at various elevations.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 135 rows (each possum) and 3 columns:
#' \describe{
#'   \item{Sex}{The sex of the possum; one of \code{Female} or \code{Male}}
#'   \item{Wgt}{The weight of the possum, in g}
#'   \item{DEM}{The elevation, in m, where the possum is found}
#' }
#'
#' @source 
#' Williams, Jessica L., Dan Harley, Darcy Watchorn, Lachlan McBurney, 
#' and David B. Lindenmayer. 2022.
#' Relationship Between Body Weight and Elevation in Leadbeater's Possum 
#' (Gymnobelideus Leadbeateri).
#' \emph{Australian Journal of Zoology} \bold{69} (5): 167--74
#' 
#' @usage 
#' data(Possums)
#' 
#' @examples
#' plot(Wgt ~ DEM, data = Possums, xlab = "Elevation (m)", ylab = "Possum weight (g)")

"Possums"
