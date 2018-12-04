library(dplyr)
library(shiny)

player_info <- read.csv(
  "data/lakers_players_15-19.csv", header=TRUE, stringsAsFactors=FALSE
)

output$nameplayer <-renderUI({
  selectInput("name1", label = "Name of the Player",
              choices = player_info$Player, selected = 1
  )
})

select_player1 <- reactive({
  df <- filter(player_info, Player == input$name1) %>% head(1L)
})

output$pic <- renderText({
  c('<img src=', select_player1()$Photo.Url, '>')
})

output$text1 <- renderText({
  paste0(input$name1," is the ", select_player1()$Pos, " position on the 
         Lakers team with the number of ",select_player1()$No.,
         " on his uniform.")
         
})

output$text2 <- renderText({
  if(select_player1()$College != ""){
  paste0("He was from ", select_player1()$College, ".")
  }else{
    paste0("He joined into NBA directly after graduated from high school.")
  }
})

output$text3 <-  renderText({
  paste0("He was born on ",
         select_player1()$Birth.Date,", and his height and weight are ", 
         select_player1()$Ht, "feet and ",
         select_player1()$Wt, " lbs.")
})


output$sub <-renderText({
  paste0(input$name1)
})

