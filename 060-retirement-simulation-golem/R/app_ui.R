#' @import shiny
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    fluidPage(theme="simplex.min.css",
              tags$style(type="text/css",
                         "label {font-size: 12px;}",
                         ".recalculating {opacity: 1.0;}"
              ),
              
              # Application title
              tags$h2("Retirement: simulating wealth with random returns, inflation and withdrawals"),
              p("An adaptation of the",
                tags$a(href="https://systematicinvestor.wordpress.com/2013/04/06/retirement-simulating-wealth-with-random-returns-inflation-and-withdrawals-shiny-web-application/", "retirement app"),
                "from",
                tags$a(href="http://systematicinvestor.wordpress.com/", "Systematic Investor"),
                "to demonstrate the use of Shiny's new grid options."),
              hr(),
              
              fluidRow(
                column(6, tags$h3("Scenario A")),
                column(6, tags$h3("Scenario B"))
              ),
              fluidRow(
                column(6, renderInputs("a")),
                column(6, renderInputs("b"))
              ),
              fluidRow(
                column(6,
                       plotOutput("a_distPlot", height = "600px")
                ),
                column(6,
                       plotOutput("b_distPlot", height = "600px")
                )
              )
    )
    
  )
}

#' @import shiny
golem_add_external_resources <- function(){
  
  addResourcePath(
    'www', system.file('app/www', package = 'retirementsimulationgolem')
  )
 
  tags$head(
    golem::activate_js(),
    golem::favicon(),
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    tags$link(rel="stylesheet", type="text/css", href="www/simplex.min.css")
  )
}
