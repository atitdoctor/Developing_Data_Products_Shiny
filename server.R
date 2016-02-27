library(shiny) 

BMI<-function(weight,height) {weight/(height^2)}

bmi<-function(weight,height){
  BMI_value<-weight/(height^2)
  ifelse(BMI_value<18.5,"underweight",ifelse(BMI_value<24.9,"normal weight",ifelse(BMI_value<30,"overweight","obesity")))
}

shinyServer(
  function(input, output) {
    
    output$inputweightvalue <- renderPrint({input$weight})
    output$inputheightvalue <- renderPrint({input$height})
    output$estimation <- renderPrint({BMI(input$weight,input$height)})
    output$diagnostic <- renderPrint({bmi(input$weight,input$height)})
  } 
)