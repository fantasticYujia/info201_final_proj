library(shiny)
library(ggplot2)

tabPanel(
  "Information Comparison",
  sidebarLayout(
    sidebarPanel(
      
      selectInput("Season1",
                  label = "Season Selection for first player",
                  choices = list(
                    "2015-2016",
                    "2016-2017",
                    "2017-2018",
                    "2018-2019"
                  )
      ),
      uiOutput("name1"),
      
      selectInput("Season2",
                  label = "Season Selection for second player",
                  choices = list(
                    "2015-2016", "2016-2017",
                    "2017-2018", "2018-2019"
                  )
      ),
      uiOutput("name2")
      ),
    mainPanel(
      DT::dataTableOutput("mytable1")
 ##     DT::dataTableOutput("mytable2")
    )
))


