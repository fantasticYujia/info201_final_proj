library(shiny)
library(dplyr)

  output$intro <- renderUI({
    div(
      p("Hello! Our dear users, we are ", tags$b("Wonder4"), ". This is our 
                              introduction page for you!"),
      p("We created an interactive platform using ", tags$b("R"), " 
            and we display all the 
          interaction with the data by using a ", tags$b("Shiny App"), ". "),
      p("The dataset that we chose is from ", tags$i("Basketball Reference"), ", a website 
        that contains information about teams and players in the NBA. The 
        domain of our data is limited to one certain basketball team -- ",
        tags$b("the Los Angeles Lakers"), "."),
      p("Our ", tags$i("target audience"), " is the people who are interested in
             basketball and specifically, the Lakers. They can go to 
          different tabs and choose different filters to interact 
          with the Shiny App that we made, and get ", tags$i("different kinds of 
           information"), " and ", tags$i("comparison from visual plots and graphs"), "."),
      p("On the next tab, you can choose different player names in the
       Lakers, and their photos will show up on the right with brief
        personal information about them below."),
      p("On the third tab, you will be asked to choose one player’s name 
              first. Then, you can filter out which season you want to 
                 look at. Next, you can filter out what specific information
              you want to look at, you can choose from five different kinds 
          of information, which are point per game, assist, rebound, block,  
             personal foul and information. This will then create a line graph 
                      showing the data you filtered about that player."),
      p("On the ", tags$i("last tab"), " you will be asked to choose ", tags$b("one basketball season"), 
        " first, and then you will be asked to choose ", tags$b("a player’s name"), ". Then 
        you will be asked to choose ", tags$b("another season and basketball player"), " that 
        you want to know about. You will get a table that shows all the 
        data about these two players, so that you can ", tags$i("compare their stats"), ".")
    )
  })
