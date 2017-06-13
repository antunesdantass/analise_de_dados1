#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(plotly)

# For dropdown menu
series = read.csv("series_from_imdb.csv")
series = unique(series$series_name) %>%
  sort()

fluidPage(
  titlePanel("Comparador de séries"),
  fluidRow(
    column(3,
           wellPanel(
             selectInput("series_name", "Série", series, selected = "Sense8", multiple = TRUE)
           )
    ),
    column(9,
           plotlyOutput("distPlot")
    )
  )
)