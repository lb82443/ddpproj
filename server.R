library(shiny)

# Define server logic for guess your height application
shinyServer(function(input, output) {
  
  output$morf <- renderPrint({input$morf})
  output$mheight <- renderPrint({input$mheight})
  output$fheight <- renderPrint({input$fheight})
  
  heightpred <- function(gender,mheight,fheight)  (mheight+fheight+gender) / 2
  
  output$prediction <- renderPrint({heightpred(as.numeric(input$morf), input$mheight, input$fheight)})
  
  
})