#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Histogram of Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "How many bins would you like?",
                  min = 1,
                  max = 50,
                  #value = c(10,40), # gives a double ended slider - not useful here
                  value = 10,
                  width = '50%')
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    ),
    position = "right"
  )
)
