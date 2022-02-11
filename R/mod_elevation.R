#' elevation UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_elevation_ui <- function(id) {
  ns <- NS(id)
  tagList(
    h1("Hello from the elevation page!")
  )
}

#' elevation Server Functions
#'
#' @noRd
mod_elevation_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
  })
}

#' Page Functions
#'
#' @noRd
#' @importFrom brochure page
elevation <- function(id = "elevation", href = "/elevation") {
  page(
    href = href,
    ui = mod_elevation_ui(id = id),
    server = function(input, output, session) {
      mod_elevation_server(id = id)
    }
  )
}

# Add this to the brochureApp call in R/elevationrun_app.R
# elevation()
