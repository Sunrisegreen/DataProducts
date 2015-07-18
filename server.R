mpgPrediction <- function(iam,icyl,ihp){
 data(mtcars)   
 fit <- lm(mpg ~ as.factor(am) + cyl + hp, data=mtcars)  
 ip <- data.frame(am=iam,cyl=icyl,hp=ihp)
 predMpg <- predict(fit,ip) 
 round(predMpg,2)[[1]]
} 
shinyServer(
    function(input, output) {
        x <- reactive({if(input$iam=="0") {"Automatic"}
                       else if(input$iam=="1") {"Manual"}
            })
        output$inputAm <- renderPrint({x()})
        output$inputCyl <- renderPrint({input$icyl})
        output$inputHp <- renderPrint({input$ihp})
        output$prediction <- renderPrint({mpgPrediction(input$iam,input$icyl,input$ihp)})
    }
)