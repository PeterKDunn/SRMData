#' Running data
#'
#' The reliability vertical oscillation measurements in wearable 
#' devices for running.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 150 rows (15 participants by 10 reps each) 
#' and 8 columns:
#' \describe{
#'   \item{ID}{The participant ID}
#'   \item{Trial}{Which trial; one of \code{1} to \code{5}}
#'   \item{Speed}{The average running speed, in km/h}
#'   \item{HRM}{The vertical oscillation (VO) as measured by the Garmin Heart Rate Monitor-Pro (HRM), in cm}
#'   \item{NOVA}{The VO as measured by the  the INCUS NOVA device, in cm}
#'   \item{RDP}{The VO as measured by the Garmin Running Dynamics Pod (RDP), in cm}
#'   \item{Footpod}{The VO as measured by the Stryd Running Power Meter Footpod (Footpod), in cm}
#'   \item{Video}{The VO as measured by video analysis, in cm}
#' }
#' 
#' @source From Tables 1 and 5 of:
#' 
#'   Smith, Craig P. and Fullerton, Elliott and Walton, Liam and Funnell, 
#'   Emelia and Pantazis, Dimitrios and Lugo, Heinz (2022).
#'   The validity and reliability of wearable devices for the measurement 
#'   of vertical oscillation for running.
#'   \emph{Plos One}, 17 (11), p. e0277810.
#' 
#' 
#' @usage 
#' data(Running)
#' 
#' @examples
#' plot(Speed ~ factor(Trial), data = Running, ylab = "Average running speed (km/h)")
#' 

"Running"
