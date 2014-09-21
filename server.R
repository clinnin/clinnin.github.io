library(shiny)
shinyServer(
  function(input, output) {

        output$Weight <- renderPrint({input$Weight})
        output$Height <- renderPrint({input$Height})
        output$BMI <- renderPrint({
          input$Weight / (input$Height^2) * 703.06957964
        })
        output$BMIprime <- renderPrint({
          ( input$Weight / (input$Height^2) * 703.06957964) /25
        })
        output$msg = renderPrint({
          if ((input$Weight / (input$Height^2) * 703.06957964 ) > 40) 
              {"Very Severely Obese"}
          else if ((input$Weight / (input$Height^2) * 703.06957964 ) > 35) 
              {"Severely Obese"}
          else if ((input$Weight / (input$Height^2) * 703.06957964 ) > 30) 
              {"Moderately Obese"}
          else if ((input$Weight / (input$Height^2) * 703.06957964 ) > 25) 
              {"Overweight"}
          else if ((input$Weight / (input$Height^2) * 703.06957964 ) > 18.5) 
              {"Healthy"}
          else if ((input$Weight / (input$Height^2) * 703.06957964 ) > 16) 
              {"Underweight"}
          else if ((input$Weight / (input$Height^2) * 703.06957964 ) > 15) 
              {"Severely Underweight"}
          else
              {"Very Severely Underweight"}
        })  
  })






#BMICalc <- function(Weight, Height) {Weight / (Height^2) * 703.06957964}

#shinyServer(
#  function(input, output) {
#    output$Weight <- renderPrint({input$Weight})
#    output$Height <- renderPrint({input$Height})
#    output$BMI <- renderPrint({BMICalc(input$BMI)})
#  }
#)