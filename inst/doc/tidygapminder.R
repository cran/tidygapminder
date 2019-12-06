## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(tidygapminder)

## -----------------------------------------------------------------------------
filepath <- system.file("extdata", "life_expectancy_years.csv", package = "tidygapminder")

# From .............................
df <- data.table::fread(filepath)

df

# To................................

tidy_indice(filepath)

## -----------------------------------------------------------------------------
dir_path <- system.file("extdata", "gapminder", package = "tidygapminder")

# From ................................
list.files(dir_path)

# To ..................................
tidy_bunch(dir_path, merge = TRUE)

