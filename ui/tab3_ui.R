library(shiny)

tabPanel(
  "Player Info",
  sidebarLayout(
    sidebarPanel(
      uiOutput("nameplayer")
    ),
    mainPanel(
  
      textOutput("sub"),
      textOutput("text1"),
      textOutput("text2"),
      textOutput("text3"),
      htmlOutput("pic")
      
    )
  )
)