#' Dog walks
#' 
#' Dog walking in the city and country.
#' 
#' @docType data
#' 
#' @keywords datasets
#' 
#' @format A data frame with 8 rows and 3 columns:
#' \describe{
#'   \item{Location}{One of \code{1} (City) or \code{2} (Farm)}
#'   \item{WalkLength}{One of \code{1} (Under 30 mins), 
#'         \code{2} (30 to under 60 mins),
#'         \code{3} (60 to under 120 mins), or 
#'         \code{4} (varies; mostly long walk but some shorter walks)}
#'   \item{Counts}{The number of dogs in each cell}
#' }
#' 
#' @details 
#' The data provide the number of dogs being walked for given times, 
#' in the city and country.
#' 
#' @source 
#' Naughton, Violetta, Teresa Grzelak, and Patrick J. Naughton. (2024). 
#' "Association Between Household Lo-cation (Urban Versus Rural) and 
#' Fundamental Care Provided to Domestic Dogs (Canis Familiaris) 
#' in Northern Ireland.” 
#' In \emph{Nutrition and Metabolism of Dogs and Cats}, 217--236. Springer.
#' 
#' @usage 
#' data(DogWalks)

"DogWalks"
