#' map UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_map_ui <- function(id) {
  ns <- NS(id)
  tagList(
    h1("Hello from the map page!")
  )
}

#' map Server Functions
#'
#' @noRd
mod_map_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
  })
}

#' Page Functions
#'
#' @noRd
#' @importFrom brochure page
map <- function(id = "map", href = "/map") {
  page(
    href = href,
    ui = mod_map_ui(id = id),
    server = function(input, output, session) {
      mod_map_server(id = id)
    }
  )
}

# Add this to the brochureApp call in R/maprun_app.R
# map()
