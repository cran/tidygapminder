## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(tidygapminder)

## ---- cache=TRUE--------------------------------------------------------------
filepath <- system.file("extdata", "life_expectancy_years.csv", package = "tidygapminder")

# From .............................
df <- data.table::fread(filepath)

head(df)

# To................................

ti_df <- tidy_indice(filepath)

head(ti_df)

## ---- cache=TRUE--------------------------------------------------------------
dir_path <- system.file("extdata", package = "tidygapminder")

# From ................................
list.files(dir_path)

# To ..................................
td_dp <- tidy_bunch(dir_path, merge = TRUE)

head(td_dp)

