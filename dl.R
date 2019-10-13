# download.file("https://github.com/rstudio/shiny-examples/archive/master.zip", "shinyexample-original.zip")
# unzip("shinyexample-original.zip")
# unlink("shinyexample-original.zip")

mv_and_create <- function(fmt, do = FALSE){
  if (do){
    dir.create(fmt)
    system(
      sprintf(
        "mv shiny-examples-master/%s %s/%s-original", 
        fmt, fmt, fmt
      )
    )
    
    golem::create_golem(
      sprintf(
        "%s/%s-golem", 
        fmt, fmt
      ), open = FALSE, 
      package_name = FALSE
    )
    
    file.create(
      sprintf(
        "%s/readme.Rmd", 
        fmt
      )
    )
    
    write_there <- function(...){
      write(..., sprintf(
        "%s/readme.Rmd", 
        fmt
      ), append = TRUE)
    }
    
    write_there("---")
    write_there("output: github_document")
    write_there("---")
    write_there(" ")
    
    write_there(
      paste("#", fmt)
    )
    write_there(" ")
    write_there("Shiny Example : ")
    write_there(" ")
    write_there("```{r}")
    write_there(
      sprintf(
        "fs::dir_tree('%s-original')", 
        fmt
      )
    )
    write_there("```")
    write_there(" ")
    write_there("golem Example : ")
    write_there(" ")
    write_there("```{r}")
    write_there(
      sprintf(
        "fs::dir_tree('%s-golem')", 
        fmt
      )
    )
    write_there("```")
    
  }
}

# 01 hello
mv_and_create("001-hello")

# 01 hello
mv_and_create("002-text")
