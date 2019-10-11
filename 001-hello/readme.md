
# 001-hello

Shiny Example :

``` r
fs::dir_tree('001-hello-original')
```

    ## 001-hello-original
    ## ├── DESCRIPTION
    ## ├── Readme.md
    ## └── app.R

golem Example :

``` r
fs::dir_tree('001-hello-golem')
```

    ## 001-hello-golem
    ## ├── 001-hello-golem.Rproj
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
    ## └── man
    ##     └── run_app.Rd

### Where to put things

Use [original DESCRIPTION](001-hello-original/DESCRIPTION) in [golem
dev/01\_start.R](001-hello-golem/dev/01_start.R)

From [original app.R](001-hello-original/app.R), put the [ui
function](001-hello-original/app.R#4) into golem
[app\_ui.R](001-hello-golem/R/app_ui.R) & the [server
function](001-hello-original/app.R#35) into golem
[app\_server.R](001-hello-golem/R/app_server.R)
