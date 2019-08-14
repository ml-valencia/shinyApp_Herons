
library(shiny)

shinyServer(function(input, output) {
  
        observeEvent(input$solve,{
                a<-as.numeric(input$sideA)
                b<-as.numeric(input$sideB)
                c<-as.numeric(input$sideC)
                s<-(a+b+c)/2
                TriangleArea=sqrt(s*(s-a)*(s-b)*(s-c))  
                output$Area <- renderText(TriangleArea)
        }
        )
})