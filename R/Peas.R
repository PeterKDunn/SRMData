#' Pea nutrition
#'
#' Nutritional content of peas.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 96 rows (each seed) and 11 columns:
#' \describe{
#'   \item{Origin}{The seed origin; a vector of strings listing locations}
#'   \item{P}{The phosphorus content, in mg/g}
#'   \item{K}{The potassium content, in mg/g}
#'   \item{Ca}{The calcium content, in mg/g}
#'   \item{Mg}{The magnesium content, in mg/g}
#'   \item{S}{The sulphur content, in mg/g}
#'   \item{Zn}{The zinc content, in mg/g}
#'   \item{Fe}{The iron content, in mg/g}
#'   \item{Cu}{The copper content, in mg/g}
#'   \item{B}{The boron content, in mg/g}
#'   \item{Mn}{The manganese content, in mg/g}
#' }
#' @source 
#' Hacisalihoglu, Gokhan, Nicole S. Beisel, and A.Mark Settles. 2021.
#' Characterization of Pea Seed Nutritional Value Within a Diverse 
#' Population of Pisum Sativum.
#' \emph{PLoS One} \bold{16} (11): e0259565.
#' 
#' @usage 
#' data(Peas)
#' 
#' @examples
#' plot(P ~ K, data = Peas, xlab = "Potassium content (mg/g)", ylab = "Phosphorus content (mg/g)")
#' 

"Peas"
