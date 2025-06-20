#' Jeans' pockets
#'
#' Measurements of pockets in men's and women's jeans.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 80 rows (each pair of jeans) and 14 columns:
#' \describe{
#'    \item{Brand}{The brand of jeans; 22 brands are represented}
#'    \item{Style}{The style of jeans; one of \code{boot-cut}, \code{regular}, 
#'          \code{skinny}, \code{slim} or \code{straight}}
#'    \item{Sex}{Whether the jeans are men's or women's jeans; 
#'          one of \code{men} or \code{women}}
#'    \item{Price}{The price, in US dollars}
#'    \item{MaxHeightFront}{The height (in cm) of the front pocket from the 
#'          top of the highest rivet to the lowest point of the pocket 
#'          (along the left-hand side or zipper side)} 
#'    \item{MinHeightFront}{The height (in cm) of the front pocket from the 
#'          top of the highest rivet to the lowest point of the pocket 
#'          (along the right-hand side or non-zipper side)} 
#'    \item{MaxWidthFront}{The width (in cm) from the widest point of 
#'          the front pocket} 
#'    \item{MinWidthFront}{The width (in cm) from the highest rivet to the 
#'          right or non-zipper side of the pocket} 
#'    \item{MaxHeightBack}{The height (in cm) from the deepest point of the 
#'          back pocket (usually in the pocket's center) to the 
#'          top of the pocket} 
#'    \item{MinHeightBack}{The height (in cm) from the shallowest point of the
#'          back pocket to the top of the pocket} 
#'    \item{MaxWidthBack}{The width of the pocket at the very top (opening)} 
#'    \item{MinWidthBack}{The width of the pocket at its narrowest
#'          (just before the pocket tapers to a point)} 
#'    \item{Area}{The area of the pocket, from the pocket's 
#'          measurements (in square cm)}
#'    \item{Style2}{The style, where \code{skinny} now means 
#'          \code{Style == "skinny" |  "slim"} and where 
#'          \code{straight} means \code{Style == "straight" | "boot-cut"}}
#' }
#' 
#' @source 
#' https://github.com/the-pudding/data/tree/master/pockets 
#' (used with permission).
#' 
#' @references
#' Diehm, Jan & Thomas, Amber (August 2018).
#' Women's pockets are inferior.
#' \emph{The Pudding}.
#' 
#' @note
#' The \code{githib} source contains a diagram explaining the pocket 
#' measurements more clearly.
#' All jeans that were measured have a 32-inch waistband, 
#' as indicated by the brand.
#' 
#' @usage 
#' data(Jeans)
#' 
#' @examples
#' boxplot(Price ~ factor(Sex), data = Jeans, xlab = "Jeans type", ylab = "Price ($)")

"Jeans"
