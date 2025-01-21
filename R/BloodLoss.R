#' Blood loss estimates
#'
#' Estimates of blood loss, for a known amount of blood.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 36 rows and 4 columns:
#' \describe{
#'   \item{High1}{Instrument 1 measurement of luteotropichormone (LH) concentrations at a high level, in mIU/ml}
#'   \item{Mid1}{Instrument 1 measurement of LH concentrations at a middle level, in mIU/ml}
#'   \item{High2}{Instrument 2 measurement of LH concentrations at a high level, in mIU/ml}
#'   \item{Mid2}{Instrument 2 measurement of LH concentrations at a middle level, in mIU/ml}
#' }
#' @note 
#' The known values are, respectively, 64.31, 19.24, 64.97 and 19.40 mIU/ml.
#' 
#' @source 
#' Feng, Yang-chun and Huang, Yan-chun and Ma, Xiu-min. 2017.
#' The application of Student's $t$-test in internal quality control of clinical laboratory.
#' \emph{Frontiers in Laboratory Medicine} \bold{1} (3): 125--128.
#' 
#' @usage 
#' data(BloodLoss)

"BloodLoss"
