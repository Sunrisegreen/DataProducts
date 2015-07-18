shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Miles per gallon(mpg) prediction"),
        sidebarPanel(
            helpText("Use the boxes below to input your values for transmission type,number of cylinders and engine horse power. Click the 'Submit' button to calculate the mpg value. Your input and predicted miles per gallon for your values will be displayed on the right side.Predicted mpg for a set of default values is displayed initially."),
            radioButtons("iam","Transmission type",c("Automatic"=0,"Manual"=1)),
            numericInput('icyl', 'No. of cylinders', 6, min = 4, max = 8, step = 1),
            numericInput('ihp', 'Horse power', 100, min = 50, max = 400, step = 1),
            submitButton('Submit')
        ),
        mainPanel(
            
            h3('Results of prediction'),
            h4('Transmission type'),
            verbatimTextOutput("inputAm"),
            h4('No. of cylinders'),
            verbatimTextOutput("inputCyl"),
            h4('Horse power'),
            verbatimTextOutput("inputHp"),
            h4('Predicted value of mpg'),
            verbatimTextOutput("prediction")
        )
    )
)
