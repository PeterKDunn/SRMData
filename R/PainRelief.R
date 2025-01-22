#' PainRelief
#'
#' Pain relief for birthing mothers.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 16 individuals having 18 observations:
#' \describe{
#'   \item{ID}{The patient ID; a digit from \code{1} to \code{228}}
#'   \item{Time}{The time point of the measurement; one of \code{1} (0 minutes), \code{2} (after 20 mins), \code{3} (after 40 mins) or \code{4} (after 60 mins)}
#'   \item{Score}{Pain score}
#'   \item{Group}{The type of pain-relief used; one of \code{palacetamol} or \code{coldpack}}
#'   \item{Age}{The age of the mother, in years}
#'   \item{Parity}{Which number child is this (e.g., 1 means this is the mother's first child)}
#'   \item{ChildSex}{The sex of the baby; one of \code{female} or \code{male}}
#'   \item{Birthweight}{The buirthweight f the babay, in kg, to the nearest 0.5kg}
#' }
#' @source 
#' Augustino, J., Moshi, F., Joho, A., & Mageda, J. F. K. (2023). 
#' Dataset comparing the effectiveness of perineal cold pack application over oral paracetamol 1000mg on postpartum perineal pain among women after spontaneous vaginal delivery in Dodoma region. 
#' "Data in Brief", 109766.
#' 
#' @usage data(PainRelief)

"PainRelief"

