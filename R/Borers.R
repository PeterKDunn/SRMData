#' The  impact of sugarcane borers
#' 
#' The impact of sugarcane borers on reducing sorghum fitness and grain production.
#' 
#' @docType data
#' 
#' @keywords datasets
#' 
#' @format A data frame with 72 rows and 8 columns:
#' \describe{
#'   \item{Hybrids}{The hybrid; one of \code{AG1090}, \code{BRS373} or \code{DKB590} }
#'   \item{Insecticide}{Whether insecticide was used; one of \code{with} or \code{without}}
#'   \item{Height}{The plant height, in cm}
#'   \item{Tunnels}{The length of borers tunnels, in cm}
#'   \item{PanicleLength}{The panicle (flower cluster) length, in cm}
#'   \item{PanicleWeight}{The panicle (flower cluster) weight, in cm}
#'   \item{Infestation}{The amount of infestation (the 'stem borer injury'), as a percentage}
#'   \item{Yield}{The sorghum yield, in kg per hectare}
#' }
#' 
#' @details 
#' The data provide details of sorghum yield in the presence of borer infestation, from a study Brazil conducted over three years.
#' 
#' @source 
#' Souza, Camila and Souza, Bruno and Fadini, Marcos and França, Joselia and Menezes, Cícero and Nascimento, Priscilla and Mendes, Simone (2025), 
#' "What is the potential of sugarcane borer in reducing sorghum fitness and grain production?", 
#' \emph{Mendeley Data}, V2, doi: 10.17632/b6s9wnxgfm.2
#' 
#' @references 
#' Souza, C., de Souza, B. H. S., Fadini, M. A. M., França, J. C. O., de Menezes, C. B., Nascimento, P. T., and Mendes, S. M. (2024). 
#' What is the potential of sugarcane borer in reducing sorghum fitness and grain production?. 
#' \emph{Journal of Applied Entomology}, \bold{148}(7), 818--826.
#' 
#' @usage 
#' data(Borers)
#' 
#' @examples
#' plot(Yield ~ Infestation, data = Borers, xlab = "% infestation", ylab = "Yield (kg/ha)")
#' 

"Borers"
