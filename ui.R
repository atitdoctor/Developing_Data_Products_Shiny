library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Mass Index Calculator"),
    
    sidebarPanel(
      numericInput('weight', 'Insert your weight in kilograms', 85) ,
      numericInput('height', 'Insert your height in metres', 1.85, min = 0.5, max = 2.5, step = 0.01),
      submitButton('Submit')
    ), 
    mainPanel(
      p('The Body mass index (BMI) is a measure of body fat based on height and weight that applies to adults.'),
      p('The following classification has been provided regarding the BMI measure,'),
      tags$div(
        tags$ul(
          tags$li('BMI <18.5       : Under weight'),
          tags$li('BMI [18.5-24.9] : Normal weight'),
          tags$li('BMI [25-29.9]   : Over weight'),
          tags$li('BMI >=30        : Obese')
        )
      ),
      
      h4('These are the Weight and Height values entered'), 
      p('weight:'), verbatimTextOutput("inputweightvalue"),
      p('height:'), verbatimTextOutput("inputheightvalue"),
      h4('Your BMI is:'),
      verbatimTextOutput("estimation"),
      p('Your BMI shows that you are:'),strong(verbatimTextOutput("diagnostic"))
      
      
    )
    
  )   
)