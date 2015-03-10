
#setwd("C:\\Users\\Lou\\Documents\\rddp")


library(shiny)

# Define UI for guess your height application

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Guess Your Height based on Gender and Parent's heights"),
  
  sidebarPanel(
    selectInput("morf", "Select your gender:",
                list( "Select " = 0,
                      "Male" = 5 , 
                     "Female" = -5
                     )
                ),
    
    numericInput('mheight', 'Mother height in inches:', 0, min = 36, max = 84, step = 1),
    numericInput('fheight', 'Father height in inches:', 0, min = 36, max = 84, step = 1),
    
    submitButton('Submit')
    
    
    ),
  
  mainPanel(
    
    h3('The data you entered'),
    h4('For gender you entered:'),
    verbatimTextOutput("morf"),
    h4('For mother height you entered:'),
    verbatimTextOutput("mheight"),
    h4('For father height you entered:'),
    verbatimTextOutput("fheight"),
    h4('Which resulted in a prediction of '),
    verbatimTextOutput("prediction")
    
    
    )
))
