#' AISsub
#'
#' Body measurements from athletes at the Australian Institute of Sport.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 202 rows (each athlete) and 6 columns:
#' \describe{
#'   \item{Sex}{The sex of the athlete; one of \code{F} or \code{M}}
#'   \item{SSF}{The sum of skin folds}
#'   \item{PBF}{The percentage body fat}
#'   \item{Sport}{The sport played by the athlete; one of 
#'         \code{BBall} (basketball), 
#'         \code{Field}, 
#'         \code{Gym} (gymnastics), 
#'         \code{Netball}, 
#'         \code{Rowing}, 
#'         \code{Swim} (swimming), 
#'         \code{T400m}, (track, further than 400m), 
#'         \code{Tennis}, 
#'         \code{TPSprnt} (track sprint events), 
#'         \code{WPolo} (waterpolo)}
#'   \item{Wt}{The weight of the athlete, in kg}
#'   \item{Ht}{The height, in cm}
#' }
#' 
#' @references 
#' Telford, R. D. and Cunningham, R. B. (1991).
#' Sex, sport, and body-size dependency of hematology
#'  in highly trained athletes. 
#' \emph{Medicine and Science in Sports and Exercise}, \bold{23}(7):788--794.
#' 
#' @source 
#' OzDASL, available on-line at http://www.statsci.org/data/.
#' 
#' @usage 
#' data(AISsub)

"AISsub"
