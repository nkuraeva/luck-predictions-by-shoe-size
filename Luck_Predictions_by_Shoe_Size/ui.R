#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Lucky Predictions by shoe size"),

    # Sidebar with a slider input for shoe size, random number and gender check
    sidebarLayout(
        sidebarPanel(
            h3("We need some answers here..."),
            sliderInput("shoe",
                        "Your shoe size is:",
                        min = 1,
                        max = 50,
                        value = 0.5),
            sliderInput("number",
                        "You can choose any number from 1 to 100:",
                        min = 1,
                        max = 100,
                        value = 1),
            selectInput("gender", "You can choose your gender:", 
                        choices = c("male", "female", "other")),
            submitButton('Start magical actions')
        ),

        # Show a prediction
        mainPanel(
                    h3("A little magic for you"),
                    h1(textOutput("outAns")),

                    h5("How to use: To get a prediction, you need to select the appropriate options from those offered on the panels on the left 
                    and click the button 'Start magical actions'."),
                    
                    h5("Warning! **The application generates predictions not based on any scientific data. Fortune telling 
                       by shoe size is on a par with activities such as tarot cards, divination by runes and the Chinese 
                       Book of Changes - I CHING. The application was created with the aim of mastering the skills of writing applications 
                       using the Shiny library, please take it as a joke.")

                
            )
        )
    
))
