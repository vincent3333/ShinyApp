library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Fibonacci Sequence"),
  sidebarPanel(
    textInput(inputId='numInput',label='The number you input',
              value=1),
    actionButton("goButton","Caculate!"),
    helpText('Note: Enter any number you want into the textbox 
             above and then click the "Caculate!" button. The system will
                caculate the "Fibonacci Sequence" number which
             less or equal to the number you entered, and show the
                result at right hand side.')
  ),
  mainPanel(
    h3('Fibonacci Sequence less or equal to '),
    textOutput("inputValue"),
    h3('is : '),
    textOutput("prediction")
  )
))