library(shiny)
library(dplyr)
library(ggplot2)

UFO_info <- read.csv(
  file = "./data/UFOCoords.csv", stringsAsFactors = FALSE
)
as.data.frame(UFO_info)

  output$Country <- renderPlot({
    UFO_infomation <- filter(UFO_info, Country == input$Country) %>%
      filter(Shape == input$Shape) %>%
      group_by(State) %>%
      summarise(occurrence = n())
    
    ggplot() +
      geom_bar(data = UFO_infomation, aes(x = State, y = occurrence), stat = 'identity') +
      ggtitle(paste('UFO occurrence in ', input$Country, ' in shape of', input$Shape)) +
      xlab("States") +
      ylab("Occurrence of UFO")
  })
  

