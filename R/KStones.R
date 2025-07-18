#' Kidney stone treatments
#'
#' Treatment of kidneys stones, and the result.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 8 rows (each variable combination) and 4 columns:
#' \describe{
#'   \item{Counts}{The number of people with the combination of the other variables}
#'   \item{Size}{One of \code{Small} or \code{Large}, the kidney stone size}
#'   \item{Method}{The method used; one of \code{Method A} or \code{Method B}}
#'   \item{Result}{The result of the procedure; one of \code{Success} or \code{Failure}}
#' }
#' @source 
#' Charig, C. R.,D. R. Webb, S. R.Payne, and J. E. A. Wickham. 1986.
#' Comparison of Treatment of Renal Calculi by Open Surgery, 
#' Percutaneous Nephrolithotomy, and Extracorporeal Shockwave Lithotripsy.
#' \emph{British Medical Journal} \bold{292}: 879--82.
#' 
#' @usage
#' data(KStones)
#' 
#' @examples
#' barplot( xtabs(Counts ~ Result + Method, data = KStones), ylab = "Number of procedures")
#' 

"KStones"
