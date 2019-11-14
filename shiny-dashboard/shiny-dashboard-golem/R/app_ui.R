#' ui
#' 
#' @param request needed for bookmarking
#'
#' @import shiny
#' @import shinydashboard
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    dashboardPage(
      dashboardHeader(title = "Basic dashboard"),
      dashboardSidebar(
        sidebarMenu(
          menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
          menuItem("Widgets", tabName = "widgets", icon = icon("th"))
        )
      ),
      dashboardBody(
        tabItems(
          # First tab content
          tabItem(tabName = "dashboard",
                  fluidRow(
                    box(plotOutput("plot1", height = 250)),
                    
                    box(
                      title = "Controls",
                      sliderInput("slider", "Number of observations:", 1, 100, 50)
                    )
                  )
          ),
          
          # Second tab content
          tabItem(tabName = "widgets",
                  h2("Widgets tab content")
          )
        )
      )
    )
  )
}

#' @import shiny
golem_add_external_resources <- function(){
  
  addResourcePath(
    'www', system.file('app/www', package = "golemdashboard")
  )
  
  tags$head(
    golem::activate_js(),
    golem::favicon(),
    tags$title("golemdashboard")
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    #tags$link(rel="stylesheet", type="text/css", href="www/custom.css")
    
  )
}
