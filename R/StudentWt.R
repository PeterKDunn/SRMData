#' Students' weight changes
#'
#' Weights of students from Week 1 to Week 12 of semester.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 68 rows (each student) and 4 columns:
#' \describe{
#'   \item{Student}{An identifier}
#'   \item{WtWk1}{The student's weight in Week 1, in kg}
#'   \item{WtWk12}{The student's weight in Week 12, in kg}
#'   \item{GainWt}{The student's weight gain, in kg}
#' }
#' @source 
#' David. n.d. DASL: Data and Story Library. 
#' <https://dasl.datadescription.com/datafile/freshman-15/>
#' 
#' @references
#' Levitsky, D. A., Halbmaier, C. A., & Mrdjenovic, G. (2004).
#' The freshman weight gain: a model for the study of the epidemic of obesity. 
#' \emph{International Journal of Obesity}, \bold{28}(11), 1435--1442.
#'
#' 
#' @usage 
#' data(StudentWt)
#' 
#' @examples
#' hist(StudentWt$GainWt, xlab = :Weight gain (kg)")
#' 

"StudentWt"
