
<!-- README.md is generated from README.Rmd. Please edit that file -->

# golemize

Example of turning a classical standard app to `{golem}`.

## From github.com/rstudio/shiny-examples/060-retirement-simulation

### Structure

Shiny Example :

``` r
fs::dir_tree("060-retirement-simulation")
#> 060-retirement-simulation
#> ├── DESCRIPTION
#> ├── server.r
#> ├── ui.r
#> └── www
#>     └── simplex.min.css
```

`{golem}` example:

``` r
fs::dir_tree("060-retirement-simulation-golem")
#> 060-retirement-simulation-golem
#> ├── 060-retirement-simulation-golem.Rproj
#> ├── DESCRIPTION
#> ├── NAMESPACE
#> ├── R
#> │   ├── app_server.R
#> │   ├── app_ui.R
#> │   ├── run_app.R
#> │   ├── utils_server.R
#> │   └── utils_ui.R
#> ├── data
#> │   └── paramNames.rda
#> ├── data-raw
#> │   └── DATASET.R
#> ├── dev
#> │   ├── 01_start.R
#> │   ├── 02_dev.R
#> │   ├── 03_deploy.R
#> │   └── run_dev.R
#> ├── inst
#> │   └── app
#> │       └── www
#> │           ├── favicon.ico
#> │           └── simplex.min.css
#> └── man
#>     └── run_app.Rd
```

### Where to put things

#### CSS & metadata

  - The css from
    [`www/simplex.min.css`](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation/www/simplex.min.css)
    goes into
    [`inst/app/www/simplex.min.css`](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation-golem/inst/app/www/simplex.min.css).
    It’s linked in `app_ui.R`, in
    [`golem_add_external_resources()`](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation-golem/R/app_ui.R#L56).

  - DESCRIPTION file \> DESCRIPTION FILE

#### Server

  - The [functions from the
    server](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation/server.r#L5)
    can be put in `R/`, as classical package functions, for example
    [`utils_server.R`](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation-golem/R/utils_server.R)

  - The [server
    function](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation/server.r#L108)
    goes into
    [app\_server.R](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation-golem/R/app_server.R)

  - [data](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation/server.r#L1)
    can be created as [package data]().

#### UI

  - The [functions from the
    UI](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation/ui.r#L3)
    can be put in `R/`, as classical package functions, for example
    [`utils_ui.R`](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation-golem/R/utils_ui.R)

  - The
    [UI](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation/ui.r#L26)
    function goes to
    [app\_ui.R](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation-golem/R/app_ui.R#L7)

#### Dep

  - Instead of
    [library(shiny)](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation/ui.r#L1),
    we list `{shiny}` as a
    [dependency](https://github.com/ColinFay/golemize/blob/master/060-retirement-simulation-golem/DESCRIPTION#L11).

## Launch the `{golem}`

  - You can run the whole `dev/run_dev.R` script.

  - You can run `pkgload::load_all();mygolem::run_app()`
