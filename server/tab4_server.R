library(shiny)
library(dplyr)
library(ggplot2)
library(DT)
setwd("~/Desktop/Info201/info201_final_proj/")

stats <- read.csv(
  file = "lakers_stats_15-19.csv", stringsAsFactors = FALSE
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









# ggplot(data = stats, aes(x = category, y = data, group = 1)) +
#   geom_line() + 
#   geom_point()
# 
# ggplot(data = stats, aes(x = category, y = data, group = 1)) +
#   geom_line(linetype = "dashed") +
#   geom_point()
# 
# p <- p + scale_color_brewer(palette = "Paired") +
#   theme_minimal()
# p + theme(legend.position="bottom")



  # output$infomation <- renderPlot({
  #   UFO_infomation <- filter(stats, Player_name == input$X2) %>%
  #     filter(Season == input$Season) %>%
  #     filter()
  #     group_by(State) %>%
  #     summarise(occurrence = n()),
  #   
  #   ggplot() +
  #     geom_bar(data = UFO_infomation, aes(x = State, y = occurrence), stat = 'identity') +
  #     ggtitle(paste('UFO occurrence in ', input$Country, ' in shape of', input$Shape)) +
  #     xlab("States") +
  #     ylab("Occurrence of UFO")
  # })
  

