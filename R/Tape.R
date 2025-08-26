#' Kinesio tape use
#'
#' The use of tapes to reduce pain.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 16 individuals having 18 observations:
#' \describe{
#'   \item{Age}{The age of the participant, in years}
#'   \item{Sex}{The sex of the participant; one of \code{1} or \code{2}, but what they refer to is unknown}
#'   \item{Pre.Left.KT.NoTension}{The pressure pain threshold (PPT) in the left arm, using Kinesio tape (KT), applied without tension: The level of pressure where pain was felt, in kPa}
#'   \item{Pre.Right.KT.NoTension}{The PPT, in the right arm, using KT, 5 mins before application of KT, applied without tension: The level of pressure where pain was felt, in kPa}
#'   \item{Post1.Left.KT.NoTension}{The PPT, in the left arm, using KT, 5 mins after application of KT, applied without tension: The level of pressure where pain was felt, in kPa}
#'   \item{Post1.Right.KT.NoTension}{The PPT, in the right arm, using KT, 5 mins after application of KT, applied without tension: The level of pressure where pain was felt, in kPa}
#'   \item{Post2.Left.KT.NoTension}{The PPT, in the left arm, using KT, 15--20 mins after application of KT, applied without tension: The level of pressure where pain was felt, in kPa}
#'   \item{Post2.Right.KT.NoTension}{The PPT, in the right arm, using KT, 15--20 mins after application of KT, applied without tension: The level of pressure where pain was felt, in kPa}
#'   \item{Post1.Left.75KT.Tension}{The PPT, in the left arm, using KT, 5 mins after application of KT, applied with 75\% tension: The level of pressure where pain was felt, in kPa}
#'   \item{Post1.Right.75KT.Tension}{The PPT, in the right arm, using KT, 5 mins after application of KT, applied with 75\% tension: The level of pressure where pain was felt, in kPa}
#'   \item{Post2.Left.75KT.Tension}{The PPT, in the left arm, using KT, 15--20 mins after application of KT, applied with 75\% tension: The level of pressure where pain was felt, in kPa}
#'   \item{Post2.Right.75KT.Tension}{The PPT, in the right arm, using KT, 15--20 mins after application of KT, applied with 75\% tension: The level of pressure where pain was felt, in kPa}
#'   \item{Pre.Left.NoTape}{The PPT, in the left arm, using no tape: The level of pressure where pain was felt, in kPa}
#'   \item{Pre.Right.NoTape}{The PPT, in the right arm, using no tape: The level of pressure where pain was felt, in kPa}
#'   \item{Post1.Left.NoTape}{The PPT, in the left arm, using no tape, 10 minutes after first test: The level of pressure where pain was felt, in kPa}
#'   \item{Post1.Right.NoTape}{The PPT, in the right arm, using no tape, 10 minutes after first test: The level of pressure where pain was felt, in kPa}
#'   \item{Post2.Left.NoTape}{The PPT, in the left arm, using no tape, 20--35 minutes after first test: The level of pressure where pain was felt, in kPa}
#'   \item{Post2.Right.NoTape}{The PPT, in the right arm, using no tape, 20--35 minutes after first test: The level of pressure where pain was felt, in kPa}
#' }
#' @source 
#' Naugle, K. E., Hackett, J., Aqeel, D., & Naugle, K. M. (2021). 
#' "Effect of different Kinesio tape tensions on experimentally-induced thermal 
#'  and muscle pain in healthy adults."
#' \emph{PloS One}, \bold{16}(11), e0259433.
#' 
#' @usage 
#' data(Tape)
#' 
#' @examples
#' plot(Pre.Left.KT.NoTension ~ factor(Sex), data = Tape, 
#'      xlab = "Sex", 
#'      ylab = "Pressure pain threshold")
#' 

"Tape"
