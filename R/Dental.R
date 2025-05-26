#' Dental statistics
#'
#' The data give the estimates of the mean number of decayed, 
#' missing and filled teeth (DMFT) at age 12 years, and the mean annual 
#' sugar consumption in the previous five years for 90 countries.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 90 rows (one per person) and 4 columns:
#' \describe{
#'   \item{Country}{the country; a factor}
#'   \item{Indus}{whether the country is considered an industrialized country; a factor with levels \code{Yes} (industrialized) or \code{No} (not industrialized)}
#'   \item{Sugar}{the mean annual sugar consumption in kilograms per person per year, computed over the five years (or as much as available) prior to the survey; a numeric vector}
#'   \item{DMFT}{estimates of the mean number of decayed, missing and filled teeth at age 12; a numeric vector}
#' }
#' @source
#' Woodward, M., and A. R. P.Walker. 1994. 
#' Sugar Consumption and Dental Caries: Evidence from 90 Countries. 
#' \emph{British Dental Journal} \bold{176}: 297--302
#' 
#' @references 
#' M. Woodward (2004) \emph{Epidemiology: Study Design and Data Analysis}, 
#' second edition. Chapman and Hall.
#' 
#' @usage 
#' data(Dental)
#' 
#' @examples
#' plot(DMFT ~ Sugar, data = Dental, pch = ifelse(Indus == "Yes", 19, 1))
#' 

"Dental"

