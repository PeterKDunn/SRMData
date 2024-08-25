#' Diameters of pizzas
#'
#' The diameter of 12-inch pizzas from two companies.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 250 rows (one per pizza) and 5 columns:
#' \describe{
#'   \item{Store}{the pizza chain; one of \code{Dominos} (Domino's Pizza) or \code{EagleBoys} (Eagle Boy's Pizza)}
#'   \item{CrustDescription}{the type of crust for the pizza; one of \code{ClassicCrust}, \code{DeepPan}, \code{MidCrust}, \code{ThinCrust} or \code{ThinNCrispy} (some unique to one pizza company)}
#'   \item{Topping}{the type of pizza topping; one of \code{BBQMeatlovers}, \code{Hawaiian}, \code{SuperSupremo} or \code{Supreme} (some unique to one pizza company)}
#'   \item{Diameter}{the pizza diameter, in cm)}
#'   \item{DiameterInches}{the pizza diameter, in inches (converted from cm)}
#' }
#' @source P.~K. Dunn. 
#' Assessing claims made by a pizza chain.
#' \emph{Journal of Statistical Education}, \bold{20}(1), 2012.
#' 
#' @usage data(PizzaSize)

"PizzaSize"

