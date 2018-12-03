library(shiny)
library(dplyr)

shinyServer(function(input, output) {
  output$text <- renderText({
    paste0("Hello! Our dear users, we are Wonder4. This is our ",
              "introduction page for you!")
    paste0("We created an interactive platform using R, and we display ",
            "all the interaction with the data by using a Shiny App. ")
    paste0("The dataset that we chose is from Basketball Reference, a ",
            "website that contains information about teams and players in ",
            "the NBA. The domain of our data is limited to one certain ",
            "basketball team -- the Los Angeles Lakers.")
    paste0("Our target audience is the people who are interested in ",
          "basketball and specifically, the Lakers. They can go to ",
            "different tabs and choose different filters to interact ",
          "with the Shiny App that we made, and get different kinds of ",
            "information and comparison from visual plots and graphs.")
    paste0("On the next tab, you can choose different player names in the ",
            "Lakers, and their photos will show up on the right with brief ",
             "personal information about them below.")
    paste0("On the third tab, you will be asked to choose one player’s name ",
                "first. Then, you can filter out which season you want to ",
              "look at. Next, you can filter out what specific information ",
            "you want to look at, you can choose from five different kinds ",
          "of information, which are score, injury, rebound, block and ",
          "steal information. This will then create a line graph showing ",
              "the data you filtered about that player. ")
    paste0("On the last tab, you will be asked to choose one player name and ",
           "the season he plays, and then you will be asked to choose ",
           "another players name and his playing season. Then you can choose ",
           "a specific information you want to know about/compare between ",
           "the two players. Then, you will get a line graph that will show ",
           "lines to compare the two players you have picked.")
  })
})
