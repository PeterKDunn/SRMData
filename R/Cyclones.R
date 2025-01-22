#' Cyclones in the Australian region
#'
#' The number of cyclones (severe; non-severe) and the ONI.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 37 rows (one per person) and 8 columns:
#' \describe{
#'   \item{Year}{The year}
#'   \item{Severe}{The number of severe cyclones recorded in the Australian region}
#'   \item{NonSevere}{The number of nonsevere cyclones recorded in the Australian region}
#'   \item{Total}{The total number of cyclones recorded in the Australian region}
#'   \item{JFM}{the Ocean Nino Index, or oni, averaged over the months January to March; a numeric vector}
#'   \item{AMJ}{the Ocean Nino Index, or oni, averaged over the months April to June; a numeric vector}
#'   \item{JAS}{the Ocean Nino Index, or oni, averaged over the months July to September; a numeric vector}
#'   \item{OND}{the Ocean Nino Index, or oni, averaged over the months October to December; a numeric vector}
#' }
#' 
#' @source 
#' Dunn, Peter K., and Gordon K. Smyth. 2018. 
#' \emph{Generalized Linear Models with Examples in R}. Springer.
#' 
#' @usage 
#' data(Cyclones)

"Cyclones"

