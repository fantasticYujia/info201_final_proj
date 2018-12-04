library(shiny)

tabPanel(
  "Player Info",
  sidebarLayout(
    sidebarPanel(
      uiOutput("name")
    ),
    mainPanel(
      htmlOutput("pic"),
      textOutput("text")
    )
  )
)