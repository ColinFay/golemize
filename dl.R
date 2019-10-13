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
    
    write_there <- function(x = " "){
      write(x, sprintf(
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
    write_there()
    write_there("## Convert UI")
    write_there()
    write_there("```{r}")
    write_there("fil <- ")
    write_there("golui <- readLines(fil)")
    write_there("spot <- 8 # H1 is there in the template")
    write_there("beg <- golui[1:(spot-1)]")
    write_there("mid <- readLines(fil)[6:36]")
    write_there("end <- golui[(spot+1):length(golui)]")
    write_there("ui <- c(beg, mid, end)")
    write_there("write(ui, fil)")
    write_there("styler::style_file(fil)")
    write_there("```")
    write_there()
    write_there("## Convert server")
    write_there()
    write_there("```{r}")
    write_there("fil <- ")
    write_there("golui <- readLines(fil)")
    write_there("beg <- golser[1:2]")
    write_there('mid <- readLines(fil)[]')
    write_there("end <- golser[4]")
    write_there("serv <- c(beg, mid, end)")
    write_there("write(serv, fil)")
    write_there("styler::style_file(fil)")
    write_there("```")
    
  }
}

# 01 hello
mv_and_create("001-hello")

# 01 text
mv_and_create("002-text")

# 03 
mv_and_create("003-reactivity")
