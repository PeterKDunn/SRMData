#' Turbine fissures
#'
#' Fissure cracks appearing in turbines.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 4 rows and 3 columns:
#' \describe{
#'   \item{Hours}{The approximate number of hours run by these turbines; one of \code{1800h} or \code{3000h} (i.e., in hours)}
#'   \item{Turbines}{The number of turbines run for the indicated number of hours}
#'   \item{Fissures}{The number of fissure cracks in the turbines}
#' }
#' 
#' @details 
#' The data provide the number of turbines, and those with fissure cracks, 
#' for an approximate given hours of run-time.
#' A two-way table of the data as given in not appropriate; 
#' \code{Turbines} includes all turbines, 
#'       including those given in \code{Fissures}.
#' 
#' @source 
#' Raymond H. Myers, Douglas C. Montgomery, and G. Geoffrey Vining (2002).
#' \emph{Generalized linear models with applications in 
#' engineering and the sciences}, Wiley.
#' 
#' 
#' @usage 
#' fisher.test( cbind(Fails = Turbines$Fissures, Passes = Turbines$Turbines - Turbines$Fissures))
#' 
#' @examples
#' 

"Turbines"
