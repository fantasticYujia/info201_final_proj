library(shiny)

ui <- navbarPage(
  title = "Lakers Stats",
  source(file.path("ui", "tab1_ui.R"),  local = TRUE)$value,
  source(file.path("ui", "tab2_ui.R"),  local = TRUE)$value,
  source(file.path("ui", "tab3_ui.R"),  local = TRUE)$value,
  source(file.path("ui", "tab4_ui.R"),  local = TRUE)$value
)

server <- function(input, output, session) {
  source(file.path("server", "tab1_server.R"),  local = TRUE)$value
  source(file.path("server", "tab2_server.R"),  local = TRUE)$value
  source(file.path("server", "tab3_server.R"),  local = TRUE)$value
  source(file.path("server", "tab4_server.R"),  local = TRUE)$value
}

shinyApp(ui = ui, server = server)