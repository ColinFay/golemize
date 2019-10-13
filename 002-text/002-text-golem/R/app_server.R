#' @import shiny
app_server <- function(input, output, session) {

  # Return the requested dataset ----
  datasetInput <- reactive({
    switch(input$dataset,
      "rock" = rock,
      "pressure" = pressure,
      "cars" = cars
    )
  })

  # Generate a summary of the dataset ----
  output$summary <- renderPrint({
    dataset <- datasetInput()
    summary(dataset)
  })

  # Show the first "n" observations ----
  output$view <- renderTable({
    head(datasetInput(), n = input$obs)
  })
}
