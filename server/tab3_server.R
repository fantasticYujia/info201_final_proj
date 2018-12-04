library(dplyr)
library(shiny)

player_info <- read.csv(
  "data/lakers_players_15-19.csv", header=TRUE, stringsAsFactors=FALSE
)

output$name<-renderUI({
  selectInput("name", label = "Name of the Player",
              choices = player_info$Player, selected = 1
  )
})

select_player <- reactive({
  df <- filter(player_info, Player == input$name)
})

output$pic <- renderText({
  c('<img src=', select_player()$Photo.Url, '>')
})

output$text <- renderText({
  paste0(input$name," is the ", select_player()$Pos, " position on the 
         Lakers team with the number of ",select_player()$No. ,
         " on his uniform. He was from ", select_player()$College, 
         ". He was born on ",
         select_player()$Birth.Date,", and his height and weight are ", 
         select_player()$Ht, "feet and ",
         select_player()$Wt, " lbs." )
})