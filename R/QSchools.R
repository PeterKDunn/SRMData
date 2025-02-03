#' Queensland school children
#'
#' The number of four-year-old students enrolled at school in 
#' Queensland (Australia), classified by sex, school type and 
#' whether the students are First Nations students (in 2019).
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 8 rows and 4 columns:
#' \describe{
#'   \item{Sex}{Sex of the student; one of \code{F} (female) or \code{M} (male)}
#'   \item{FNations}{The first-nations status; 
#'         one of \code{Yes} (First Nations students) or 
#'         \code{No} (non-First Nations students)}
#'   \item{School}{The school type; 
#'         one of \code{Government} or \code{Non-government}}
#'   \item{Counts}{The number of four-year-old students meeting 
#'         the designated criteria}
#' }
#' 
#' @source 
#' Collated by Peter K. Dunn, obtained from data at the
#' \emph{Australian Bureau of Statistics},
#' web page (https://www.abs.gov.au) in 2023.
#' 
#' @references 
#' Peter K. Dunn. Generalized linear models. 
#' In R. J. Tierney, F. Rizvi, and K. Erkican, editors, 
#' \emph{International Encyclopedia of Education}, pages 583--589. 
#' Elsevier, 2023.
#' 
#' @usage 
#' data(QSchools)

"QSchools"
