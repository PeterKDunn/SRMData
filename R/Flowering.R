#' Flowering shrubs
#'
#' First-flowering dates for two shrubs.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 25 rows (one per location) and 4 columns:
#' \describe{
#'   \item{Willow}{The (Julian) date on which flowering began for the encroaching Salix (willows)}
#'   \item{Skypilot}{The (Julian) date on which flowering began for the native Polemonium viscosum (alpine skypilot)}
#'   \item{MinTemp}{The minimum June temperature (in degrees C)}
#'   \item{Altitude}{The altitude (in m)}
#' }
#' @source 
#' Kettenbach, Jessica A.; Miller-Struttmann, Nicole; Moffett, Zoë; Galen, Candace (2018). 
#' Data from: How shrub encroachment under climate change could threaten
#' pollination services for alpine wildflowers: a case study using the 
#' alpine skypilot, Polemonium viscosum [Dataset]. 
#' Dryad. https://doi.org/10.5061/dryad.2p2bh
#' 
#' 
#' @usage 
#' data(Flowering)
#' 
#' @examples
#' with( Flowering, hist( Willow - Skypilot, 
#'       xlab = "Days later for willow"), 
#'       ylab = "Number of locations")
#' 

"Flowering"
