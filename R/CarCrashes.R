#' Car crashes
#'
#' The number and type of of car crashes, in two different years.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 4 rows and 2 columns:
#' \describe{
#'   \item{CrashType}{Whether or not the crash involved pedestrians (\code{1}) or other vehicle (\code{2})}
#'   \item{Year}{Either \code{2011} or \code{2015}}
#'   \item{Counts}{The number of crashes in the combination defined by \code{CrashType} and \code{Year}}
#' }
#' 
#' @details 
#' The data provide the number of car crashes in a mountainous county in western China, some involving pedestrians and some involving other vehicles, in two years
#' 
#' @source 
#' Wang, Liyang, Ruimin Li, Changjun Wang, and Zhiyong Liu (2020). 
#' "Driver Injury Severity Analysis of Crashes in a Western China’s Rural Mountainous County: Taking Crash Compatibility Difference into Consideration.".
#' \emph{Journal of Traffic and Transportation Engineering} (English Edition).
#' 
#' 
#' @usage 
#' data(CarCrashes)

"CarCrashes"

