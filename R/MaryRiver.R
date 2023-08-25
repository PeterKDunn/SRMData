#' Mary River stream flow data
#'
#' Stream flow from Mary River
#'
#' @format A data frame with 21,659 rows and 8 columns:
#' \describe{
#'   \item{Date.and.time}{The date and time of the recording, in the format `01-10-59 0:00`; all times are given as `0;:00` so they are effectively dates}
#'   \item{Mean}{The mean stream flow recording for given date, in ML}
#'   \item{Quality}{Quality Control codes}
#'   \item{Min}{The minimum stream flow recording for given date, in ML}
#'   \item{Quality.1}{Quality Control codes}
#'   \item{Max}{The maximum stream flow recording for given date, in ML}
#'   \item{Quality.2}{Quality Control codes}
#'   \item{Comments}{Comments by DNRM}
#' }
#' @source The State of Queensland.
#' Originally sourced from <http://watermonitoring.dnrm.qld.gov.au/cgi/webhyd.pl?rsdf_org=138110A&cat=rs&lvl=1&0>,
#' but the actual website keeps changing...
#' Last time I checked it was <https://water-monitoring.information.qld.gov.au>;
#' then select "Streamflow data", "Mary Basin" and "Mary River at Bellbird Creek" (i.e., station 138110A).

"MaryRiver"

