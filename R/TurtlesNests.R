#' TurtleNests
#'
#' Infected and non-infected turtle nests, and whether the nests were relocated.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 4 rows and 2 columns:
#' \describe{
#'   \item{Infected}{Whether or not the nest was infected with fungi or bacteria; one of \code{0} (not infected) or \code{1}}
#'   \item{Nest}{Whether the nest was relocated or not; one of \code{0} (Natural (not relocated)) or \code{1} (relocated)}
#'   \item{Counts}{The number of nests in the combination defined by \code{Infected} and \code{Nest}}
#' }
#' 
#' @details The data provide the number of nests from Mediterranean loggerhead turtles that had fungal or bacterial infections.
#' Some nests are relocated due to the risk if tidal inundation; researchers were interested to see if the relocation was related to the probability of infection.
#' 
#' @source 
#' Candan, Ahmet Yavuz, Katilmis, Yusuf and Ergin, Cagri (2021).
#' "First report of \emph{Fusarium} species occurrence in loggerhead sea turtle (\emph{Caretta caretta}) nests and hatchling success in Iztuzu Beach, Turkey".
#' \emph{Biologia}, \bold{76}, 565--573.
#' 
#' @usage data(TurtleNests)

"TurtleNests"

