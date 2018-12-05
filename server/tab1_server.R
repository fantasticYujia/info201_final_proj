library(shiny)
library(dplyr)

output$intro <- renderUI({
  div(style="text-align: center;",
      p("Hello! Our dear users, we are ", tags$b("Wonder4."), "This is our 
        introduction page for you!"),
      p("We created an interactive platform using ", tags$b("R"), " 
        and we display all the 
        interaction with the data by using a ", tags$b("Shiny App."),
        p("The dataset that we chose is from ", tags$i("Basketball Reference"), 
          ", a website that contains information about teams and players in 
          the NBA. The domain of our data is limited to one certain basketball 
          team -- ", tags$b("the Los Angeles Lakers.")),
        p("Our ", tags$i("target audience"), " is the people who are interested 
          in basketball and specifically, the Lakers. They can go to 
          different tabs and choose different filters to interact with 
          the Shiny App that we made, and get ", 
          tags$i("different kinds of information"), " and ", 
          tags$i("comparison from visual plots and graphs.")),
        p("On the ", tags$i("next tab"), " you can choose a stat category 
          first. If you choose ", tags$b("Single Player"), " and then choose 
          different player names in the Lakers. Their photos will show up on the 
          right with brief personal information about them below. 
          Also, their ", tags$i("PTS.G, TRB, BLK, AST, STL, PF, and season 
                                information"), " will show under their personal information. 
          If you choose ", tags$b("Top 5 of the season"), ", you will be asked 
          to choose a ", tags$b("season"), " and a ", tags$b("category"), 
          ". Then a bar graph will show on the right. The top 5 players’ 
          name will be on ", tags$i("x-axis"), ", and their stats of the 
          category that you choose will be on ", tags$i("y-axis"), "."),
        
        p("On the ", tags$i("last tab"), " you will be asked to choose ", 
          tags$b("one basketball season"), " first, and then you will be 
          asked to choose ", tags$b("a player’s name."), "Then you will 
          be asked to choose ", tags$b("another season and basketball player"), 
          " that you want to know about. You will get a table that shows all 
          the data about these two players, so that you can ", 
          tags$i("compare their stats."))
        ))
})
