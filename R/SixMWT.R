#' Six-minute walk time tests
#'
#' Six-minute walk time data for two different walkway lengths.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 50 rows (one per subject) and 3 columns:
#' \describe{
#'   \item{Dist20}{The 6MWT distance in a 20m corridor, in m}
#'   \item{Dist30}{The 6MWT distance in a 30m corridor, in m}
#'   \item{Age}{The age of the subject, in completed years}
#' }
#' @source 
#' Saiphoklang, N., Pugongchai, A., & Leelasittikul, K. (2022). 
#' Comparison between 20 and 30 meters in walkway length affecting the 6-minute 
#' walk test in patients with chronic obstructive pulmonary disease: 
#' A randomized crossover study. 
#' \emph{Plos One}, \bold{17}(1), e0262238.
#' 
#' @usage 
#' data(SixMWT)
#' 
#' @examples
#' with(SixMWT, hist(Dist20 - Dist30, xlab = "Increase using 20m walkway" ) )
#' 

"SixMWT"
