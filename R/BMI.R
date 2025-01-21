#' BMI of Irish patients
#'
#' The BMI and other health data number of Irish patients.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 70 rows and 11 columns:
#' \describe{
#'   \item{sex}{Sex of the person; one of \code{female} or \code{male}}
#'   \item{age}{Age of person, in completed years}
#'   \item{edu}{Level of education; one of \code{primary}, \code{secondary}, \code{postLeaving}, \code{complete3rd}}
#'   \item{m_card}{whether the person has a medical card; one of \code{yes} or \code{no}}
#'   \item{smoke}{smoking status; one of \code{daily}, \code{occasionally} or \code{not at all}}
#'   \item{drink}{whether the person drinks alcohol weekly; one of \code{yes} or \code{no}}
#'   \item{exercise}{The number of days per week the person walks or exercise for 30 minutes or more}
#'   \item{diet}{whether the person thinks they have a healthy diet; one of \code{yes}, \code{no} or \code{dont know}}
#'   \item{ob_weight_kg}{the observed (measured) weight, in kg}
#'   \item{ob_height_m}{the observed (measured) height in metres}
#'   \item{sr_weight_kg}{the weight reported by the person, in kg}
#'   \item{sr_height_m}{the height reported by the person, in metres}
#'   \item{bmi_perception}{the person perception of the BMI; one of \code{normalweight}, \code{overweight} or \code{obese}}
#' }
#' 
#' @details 
#' The data come from a survey.
#' 
#' @source 
#' Johnson, E., Millar, S. R., & Shiely, F. (2021). 
#' The association between BMI self-selection, self-reported BMI and objectively measured BMI. 
#' \emph{HRB Open Research}, \bold{4}(37), 37.
#' 
#' @usage 
#' data(BMI)

"BMI"

