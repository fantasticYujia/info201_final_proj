library(shiny)

ui <- navbarPage(
  title = "Split app code across multiple files",
  source(file.path("ui", "tab1.R"),  local = TRUE),
  source(file.path("ui", "tab2.R"),  local = TRUE),
  source(file.path("ui", "tab3.R"),  local = TRUE)
)

server <- function(input, output, session) {
  source(file.path("server", "tab1.R"),  local = TRUE)
  source(file.path("server", "tab2.R"),  local = TRUE)
  source(file.path("server", "tab2.R"),  local = TRUE)
}

shinyApp(ui = ui, server = server)