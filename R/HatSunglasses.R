#' Wearing hats and sunglasses
#'
#' The wearing of hats and sunglasses in Brisbane.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 16 rows (each combination of the other variables) 
#' and 5 columns:
#' \describe{
#'   \item{Gender}{Gender of person; one of \code{Male} or \code{Female}}
#'   \item{Hat}{Whether the person was wearing a hat; one of \code{Yes} or \code{No}}
#'   \item{Sunglasses}{Whether the person was wearing sunglasses; one of \code{Yes} or \code{No}}
#'   \item{Phone}{Whether the person had easy access to their phone; one of \code{Easy} or \code{Not easy}}
#'   \item{Count}{The number if people meeting the given combination}
#' }
#' @source 
#' Dexter, Ben, Rachel King, Simone L. Harrison, Alfio V. Parisi, and 
#' Nathan J. Downs. 2019. 
#' A Pilot Observational Study of Environmental Summertime Health Risk 
#' Behavior in Central Brisbane, Queensland: Opportunities to Raise 
#' Sun Protection Awareness in Australia’s Sunshine State. 
#' \emph{Photochemistry and Photobiology} \bold{95} (2): 650--55
#' 
#' @usage 
#' data(HatSunglasses)
#' 
#' @examples
#' barplot( xtabs(Count ~ Hat + Gender, data = HatSunglasses), ylab = "Number people")
#' 

"HatSunglasses"
