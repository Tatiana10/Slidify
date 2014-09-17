shinyUI(

        fluidPage(
        verticalLayout(
                        titlePanel('Swiss Fertility and Socioeconomic Indicators (1888) Data'),
                        
                        mainPanel("This application allows you to analyze socio-economic indicators for each of 47
                          French-speaking provinces of Switzerland at about 1888. Please select two of them and see how they are related:"
                        ),
                        
                        
                        plotOutput('plot1'),
                        wellPanel(
                           
                selectInput('xcol', 'X Variable', names(swiss)),
                selectInput('ycol', 'Y Variable', names(swiss),
                            selected=names(swiss)[[2]]),
                numericInput('clusters', 'Number of clusters', 5,
                             min = 1, max = 9)
        )
        

        
)))
