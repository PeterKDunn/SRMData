#' Weight loss after treatment for anorexia
#'
#' Weight changes in girls with anorexia: two treatments.
#' 
#' @docType data
#' 
#' @keywords datasets
#' 
#' @format A data frame with 72 rows and 3 columns:
#' \describe{
#'   \item{Treatment}{The treatment type; one of \code{CB} (cognitive behavioural treatment), \code{Control} (the control group) or \code{FT} (family therapy)}
#'   \item{Before}{Weight (in kg) before the anorexia treatment}
#'   \item{After}{Weight (in kg) after the anorexia treatment}
#' }
#' @source 
#' D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway, and E. Ostrowski (1994) 
#' A Handbook of Small Data Sets, London: Chapman and Hall. Dataset 285.
#' 
#' @usage 
#' data("Anorexia")
#' 
#' @examples
#' plot(After ~ Before, data = Anorexia, xlab = "Before weight (kg)", ylab = "After weight (kg)")

"Anorexia"
