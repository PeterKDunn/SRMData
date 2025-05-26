#' Mary River stream flow
#'
#' The mean daily stream flow from the Mary River.
#' 
#' @docType data
#' 
#' @keywords datasets
#'
#' @format A data frame with 21,659 rows and 3 columns:
#' \describe{
#'   \item{Month}{The month (where \code{1} means January, etc.}
#'   \item{Year}{The year}
#'   \item{Mean}{The mean stream flow recording for given date, in ML}
#' }
#' @source 
#' Originally sourced from:
#'  <http://watermonitoring.dnrm.qld.gov.au/cgi/webhyd.pl?rsdf_org=138110A&cat=rs&lvl=1&0>,
#' but the actual website address keeps changing...
#' 
#' Last time I checked it was:
#'  <https://water-monitoring.information.qld.gov.au>;
#' then select "Streamflow data", "Mary Basin" and
#' "Mary River at Bellbird Creek" (i.e., station 138110A).
#' 
#' @usage 
#' data(MaryRiver)
#' 
#' @examples
#' with(MaryRiver, hist( log(Mean[Month==2])), xlab = "log(Mean Streamflow in Feb, in ML)", ylab = "Number of Februarys")

"MaryRiver"
