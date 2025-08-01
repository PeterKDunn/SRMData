#' Ear infections in Sydney
#'
#' Ear infections for swimmers at a Sydney beach.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 287 rows and 6 columns:
#' \describe{
#'   \item{Swimmer}{The type of swimmer; one of \code{Occasional} or \code{Frequent}}
#'   \item{Location}{The usul swimming location; one of \code{Non-beach} or \code{Beach}}
#'   \item{Age}{The age group; one of \code{15 to 19}, \code{20 to 24}, or \code{25 to 29}}
#'   \item{Sex}{The sex of the person; one of \code{Male} or \code{Female}}
#'   \item{NumInfections}{The number of self-reported ear infections}
#'   \item{Infections}{Whether the person had experienced an ear infection; one of \code{Yes} or \code{No}}
#' }
#' 
#' @references 
#' D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway, and E. Ostrowski (1994) 
#' A Handbook of Small Data Sets, London: Chapman and Hall. Dataset 328.
#' 
#' @source 
#' James K. Lindsey (1995).
#' This data file was downloaded from OzDASL
#' (http://www.statsci.org/data/oz/earinf.html) where it was prepared by 
#' Dr Gordon Smyth from Hand et al (1994) Dataset 328.
#' 
#' @usage 
#' data(EarInfection)
#' 
#' @examples
#' barplot( xtabs(NumInfections ~ Age + Sex, data = EarInfection ), names.arg = c("Male", "Female"), ylab = "Number of swimmers")
#' 

"EarInfection"
