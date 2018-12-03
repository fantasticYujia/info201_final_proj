library(shiny)

ui <- navbarPage(
  title = "Lakers Stats",
  source(file.path("ui", "tab1ui.R"),  local = TRUE)$value,
  source(file.path("ui", "tab2.R"),  local = TRUE)$value,
  source(file.path("ui", "tab3.R"),  local = TRUE)$value
)

server <- function(input, output, session) {
  source(file.path("server", "tab1.R"),  local = TRUE)$value
  source(file.path("server", "tab2.R"),  local = TRUE)$value
  source(file.path("server", "tab2.R"),  local = TRUE)$value
}

shinyApp(ui = ui, server = server)