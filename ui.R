shinyUI(
  pageWithSidebar(
    headerPanel("Body Mass Index Calculator"),
    sidebarPanel(
      numericInput('Height', 'Enter Height in Inches', 69, min = 24, max = 100, step = 1),
      numericInput('Weight', 'Enter Weight in Pounds', 196, min = 50, max = 2000, step = 1),
      submitButton('Update')
    ),
    mainPanel(
      h3('BMI Results'),
      h4('Height you entered (inches):'),
      verbatimTextOutput("Height"),
      h4('Weight you entered (pounds):'),
      verbatimTextOutput("Weight"),
      h4('Calculated BMI:'),
      verbatimTextOutput("BMI"),
      h4('BMI Category:'),
      verbatimTextOutput("msg"),
      h4('BMI Prime:'),
      verbatimTextOutput("BMIprime"),
           
      tags$div(class="header", checked=NA,
               tags$a(href="http://rpubs.com/clinnin/29900", "Documentation and Help")
      )
    
    
     
    )
  )
)