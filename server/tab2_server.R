library(dplyr)
library(shiny)
library(DT)
setwd("~/Documents/UW Related/info201/info201_final_proj/")

player_stats <- read.csv(
  "data/lakers_stats_15-19.csv", header=TRUE, stringsAsFactors=FALSE
)

player_image <- read.csv(
  "data/lakers_players_15-19.csv", header=TRUE, stringsAsFactors=FALSE
)

output$name<-renderUI({
  selectInput("name", label = "Name of the Player",
              choices = player_stats$X, selected = 1
  )
})

select_season <- reactive({
  df1 <- filter(player_stats, Season == input$season) %>%
    head(5L)
})

output$top <- renderPlot({
  y_value <- input$cat 
  ggplot(data = select_season(), aes(x = reorder(get("X"), -get(y_value)), y = get(y_value))) +
    geom_bar(stat = "identity", color = "yellow", fill = "gold") +
    geom_text(aes(y = get(y_value), label = get(y_value)), color = "purple", size = 8) +
    xlab("Name") +
    ylab("Stat")
})

select_name <- reactive({
  df2 <- filter(player_stats, X == input$name) %>% 
     select(PTS.G, TRB, BLK, AST, STL, PF, Season)
})

select_player <- reactive({
  df3 <- filter(player_image, Player == input$name)
})

output$single <- DT::renderDataTable({
  select_name()
})

output$player <- renderText({
  paste0(input$name)
})

output$picture <- renderText({
  c('<img src=', select_player()$Photo.Url, '>')
})

