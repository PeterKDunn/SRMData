#' Diabetes
#'
#' Blood pressure on the first and second visits.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 403 rows (one per person) and 4 columns; 
#' many values are missing
#' \describe{
#'   \item{SBPfirst}{the systolic blood pressure from the first visit, in mm Hg}
#'   \item{DBPfirst}{the diastolic blood pressure from the first visit, in mm Hg}
#'   \item{SBPsecond}{the systolic blood pressure from the second visit, in mm Hg}
#'   \item{DBPsecond}{the diastolic blood pressure from the second visit, in mm Hg}
#' }
#' @source 
#' Originally from <http://biostat.mc.vanderbilt.edu/DataSets>, 
#' though that URL no longer works.
#' It seems to now appear at <https://hbiostat.org/data/repo/diabetes.html>
#' 
#' @usage 
#' data(Diabetes)
#' 
#' @examples
#' with(Diabetes, boxplot( cbind("First visit" = SBPfirst, "Second visit" = SBPsecond)), ylab = "SBP" )

"Diabetes"

