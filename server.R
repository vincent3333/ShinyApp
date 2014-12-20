fibonacci <- function(x){
  num0 <- 1
  num1 <- 1
  num2 <- 1
  str <- ''
  if(x < 1){
    str <- 'The number must large than 0.'
  }else if( x == 1){
    str <- '0,1'
  }else{
    str <- '0,1'
    while(num2 <= x){          
      num0 = num1
      num1 = num2
      str <- paste(str,',',num2)      
      num2 = num1 + num0
    }
  }
  return (str)
}

shinyServer(
  function(input,output){
    output$inputValue <- renderText(input$numInput)
    output$prediction <- renderText({
      input$goButton
      isolate(fibonacci(as.numeric(input$numInput)))
    })
  }
)