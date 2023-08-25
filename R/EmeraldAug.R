#' EmeraldAug
#'
#' The total monthly rainfall in Emerald, Australia, and the average monthly soi
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 114 rows (one per August over 114 years) and 4 columns:
#' \describe{
#'   \item{Year}{The year}
#'   \item{Rain}{The rainfall in August of the given year; in mm}
#'   \item{SOI}{The monthly average Southern Oscillation Index (SOI)}
#'   \item{Phase}{the SOI phase (see Stone and Auliciems, 1992); a factor with these values: 1 (consistently negative), 2 (consistently positive), 3 (rapidly falling), 4 (rapidly rising), or 5 (consistently near zero)}
#' }
#' @source Data obtained from the Australian Bureau of Meteorology (<http://www.bom.gov.au>) and iri/ldeo Climate Data Library (<http://www.longpaddock.qld.gov.au/seasonalclimateoutlook/southernoscillationindex/soidatafiles/index.php>) on 21 December 2010, then compiled.
#' 
#' R. C. Stone and A. Auliciems (1992). 
#' SOI phase relationships with rainfall in eastern Australia, 
#' \emph{International Journal of Climatology}, \bold{12}, 625--636.
#' 
#' @usage data(EmeraldAug)

"EmeraldAug"

