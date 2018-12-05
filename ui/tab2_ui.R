library(shiny)

tabPanel(
  "Player Stats",
  theme = "style.css",
  setBackgroundImage(src = "lakers_pic.png"),
  sidebarLayout(
    sidebarPanel(
      radioButtons(
        inputId = "choice",
        label = "Choose a Stat Category",
        choices = list("Single Player", "Top 5 of the Season")
      ),
      conditionalPanel(
        condition = "input.choice == 'Single Player'",
        uiOutput("name")
      ),
      conditionalPanel(
        condition = "input.choice == 'Top 5 of the Season'",
        selectInput(
          inputId = "season",
          label = "Choose a Season",
          choices = list(
            "2015-2016", "2016-2017", 
            "2017-2018", "2018-2019"
          )
        ),
        selectInput(
          inputId = "cat",
          label = "Category",
          choices = list(
            "Point per game" = "PTS.G",
            "Rebound" = "TRB",
            "Assist" = "AST",
            "Block" = "BLK",
            "Steal" = "STL",
            "Personal foul" = "PF"
          ) 
        )
      )
    ),
    mainPanel(
      conditionalPanel(
        condition = "input.choice == 'Top 5 of the Season'",
        plotOutput("top")
      ),
      conditionalPanel(
        condition = "input.choice == 'Single Player'",
        textOutput("player"),
        tags$head(tags$style("#player{color: purple;
                                 font-size: 20px;
                                 font-style: italic;
                                 font-weight: bold;
                             }"
                         )
        ),
        htmlOutput("picture"),
        textOutput("text1"),
        textOutput("text2"),
        textOutput("text3"),
        DT::dataTableOutput("single")
      )
    )
  )
)
