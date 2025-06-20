#' Rip identification
#' 
#' Whether people of given age groups can correctly identify ocean rips.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 8 rows and 3 columns:
#' \describe{
#'   \item{AgeGroup}{The age group of the person; one of \code{1} (18 to 24), \code{2} (25 to 34), \code{3} (35 to 50) or \code{4} (51 to 65)}
#'   \item{Identification}{Whether the person correctly identified a rip from a picture; one of \code{1} (correctly) or \code{2} (incorrectly)}
#'   \item{Counts}{The number of people in each cell}
#' }
#' 
#' @details 
#' The data provide the number of people correctly identifying a rip from a photo, by age group.
#' 
#' @source 
#' Diez-Fern\'andez, P., Ruibal-Lista, B., Lobato-Alejano, F., & L\'opez-Garc\'ia, S. (2023). 
#' 'Rip current knowledge: do people really know its danger? 
#' Do lifeguards know more than the general public?'. 
#' \emph{Heliyon}, \bold{9}(7).
#' 
#' @usage 
#' data(RipsID)
#' 
#' @examples
#' barplot( xtabs( Counts ~ Identification + AgeGroup, data = RipsID), names.arg = c("18-24", "25-34", "35-50",  "51-65"), ylab = "Number of people")

"RipsID"
