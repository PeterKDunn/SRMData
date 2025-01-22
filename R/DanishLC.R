#' Danish lung cancer cases
#'
#' The number of cases of lung cancer in four Danish cities.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 24 rows (each combination) and 4 columns:
#' \describe{
#'   \item{Cases}{The number of lung cancer cases for the given age group and city}
#'   \item{Pop}{The population for the given age group and city}
#'   \item{Age}{The age group; one of \code{40-54}, \code{55-59}, \code{60-64}, \code{65-69}, \code{70-74} or \code{>74}}
#'   \item{City}{The city; one of \code{Fredericia}, \code{Horsens}, \code{Kolding} or \code{Vejle}}
#' }
#' 
#' @references 
#' E. B. Andersen (1977).
#' Multiplicative Poisson models with unequal cell rates.
#' \emph{Scandinavian Journal of Statistics}, \bold{4}, 153--158.
#' 
#' @source James K. Lindsey (1995).
#' \emph{Modelling frequency and count data}. Clarendon Press, page 157.
#' 
#' @usage 
#' data(DanishLC)

"DanishLC"
