#' @title
#' Launch Cerebro interface.
#'
#' @description
#' Launch Cerebro interface.
#'
#' @param version Which version of Cerebro to launch: "v1.0", "v1.1", "v1.2",
#' "v1.3", "v1.4"; defaults to "v1.4".
#' @param ... Further parameters that are used by \code{shiny::runApp}, e.g.
#' \code{host} an \code{port}, and the specific versions of Cerebro. See
#' \code{launchCerebroV1.x} for details.
#'
#' @return
#' Shiny application.
#'
#' @seealso
#' \code{\link{launchCerebroV1.0}}, \code{\link{launchCerebroV1.1}},
#' \code{\link{launchCerebroV1.2}}, \code{\link{launchCerebroV1.3}}
#'
#' @examples
#' if ( interactive() ) {
#'   launchCerebro(
#'     version = "v1.4",
#'     options = list(port = 1337)
#'   )
#' }
#'
#' @export
#'
launchCerebro <- function(
  version = "v1.4",
  ...
){

  ##--------------------------------------------------------------------------##
  ## Check input parameters.
  ##--------------------------------------------------------------------------##
  available_versions <- c("v1.0","v1.1","v1.2","v1.3", "v1.4")

  if ( (version %in% available_versions == FALSE ) )
  {
    stop(
      'Version must be one of: ', paste0(available_versions, collapse = ', '),
      call. = FALSE
    )
  }

  ##--------------------------------------------------------------------------##
  ## Launch Cerebro.
  ##--------------------------------------------------------------------------##
  if ( version == "v1.0" ) {
    launchCerebroV1.0(...)
  } else if ( version == "v1.1" ) {
    launchCerebroV1.1(...)
  } else if ( version == "v1.2" ) {
    launchCerebroV1.2(...)
  } else if ( version == "v1.3" ) {
    launchCerebroV1.3(...)
  } else if ( version == "v1.4" ) {
    launchCerebroV1.4(...)
    }
}
