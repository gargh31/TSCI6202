#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    print("starting shinyServer")
  
    output$distPlot <- renderPlot({
        print("starting renderPlot")
        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        ggplot(dat1, aes(y = deaths_cumulative, x = reporting_date)) + geom_line() +
          geom_line(aes(y = total_case_daily_change), col="red") + ylab("counts")

})})

