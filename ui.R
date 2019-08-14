library(shiny)
library(shinythemes)

shinyUI(fluidPage(
        
        theme = shinytheme("sandstone"),
        
        navbarPage("Area of a Triangle using Heron's Formula",
                   position = "fixed-top"),

        column(5, offset=4,titlePanel("Area Calculator")),
        sidebarPanel(
                textInput("sideA", "Length of side A:"),
                textInput("sideB","Length of side B:"),
                textInput("sideC","Length of side C:"),
                actionButton("solve", "Calculate Area"),
                h4("Note: a+b > c")
    ),
    
    mainPanel(
      h2("Area of the Triangle:"),
      h3(textOutput("Area")),
      img(src='TRIANGLE.png', align = "right",height=400,width=700)
    )
  )
)
