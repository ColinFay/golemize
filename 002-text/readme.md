
# 002-text

Shiny Example :

``` r
fs::dir_tree('002-text-original')
```

    ## 002-text-original
    ## ├── DESCRIPTION
    ## ├── Readme.md
    ## └── app.R

golem Example :

``` r
fs::dir_tree('002-text-golem')
```

    ## 002-text-golem
    ## ├── 002-text-golem.Rproj
    ## ├── DESCRIPTION
    ## ├── LICENSE
    ## ├── LICENSE.md
    ## ├── NAMESPACE
    ## ├── R
    ## │   ├── app_server.R
    ## │   ├── app_ui.R
    ## │   └── run_app.R
    ## ├── dev
    ## │   ├── 01_start.R
    ## │   ├── 02_dev.R
    ## │   ├── 03_deploy.R
    ## │   └── run_dev.R
    ## ├── inst
    ## │   └── app
    ## │       └── www
    ## │           └── favicon.ico
    ## ├── man
    ## │   └── run_app.Rd
    ## └── tests
    ##     ├── testthat
    ##     │   └── test-golem-recommended.R
    ##     └── testthat.R

## Convert UI

``` r
fil <- "002-text-golem/R/app_ui.R"
golui <- readLines(fil)
spot <- 8 # H1 is there in the template
beg <- golui[1:(spot-1)]
mid <- readLines("002-text-original/app.R")[6:36]
end <- golui[(spot+1):length(golui)]
ui <- c(beg, mid, end)
write(ui, fil)
styler::style_file(fil)
```

## Convert server

``` r
fil <- "002-text-golem/R/app_server.R"
golser <- readLines(fil)
beg <- golser[1:2]
mid <- readLines("002-text-original/app.R")[41:60]
end <- golser[4]
serv <- c(beg, mid, end)
write(serv, fil)
styler::style_file(fil)
```
