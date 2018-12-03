library(shiny)
library(dplyr)
library(ggplot2)
library(DT)

stats <- read.csv(
  "data/lakers_stats_15-19.csv", stringsAsFactors = FALSE
)
as.data.frame(stats)

output$name1 <- renderUI({
  df1 <- filter(stats, Season == input$Season1)
  selectInput("name1", label = "Name of the first player",
                        choices = df1$X, selected = 1)
})


output$name2 <- renderUI({
  df2 <- filter(stats, Season == input$Season2)
  selectInput("name2", label = "Name of the second player",
              choices = df2$X, selected = 1)
})

first_player_season <- reactive({
  new_df <- filter(stats, Season == input$Season1) %>%
    filter(X == input$name1)
})

second_player_season <- reactive({
  new_df <- filter(stats, Season == input$Season2) %>%
    filter(X == input$name2)
})

output$mytable1 <- DT::renderDataTable({
  df3 <- rbind(first_player_season(), second_player_season())
})