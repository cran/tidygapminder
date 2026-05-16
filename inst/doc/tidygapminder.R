## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment  = "#>"
)

## ----setup--------------------------------------------------------------------
library(tidygapminder)

## -----------------------------------------------------------------------------
csv_path <- system.file("extdata/life_expectancy_years.csv",
                         package = "tidygapminder")

raw <- read.csv(csv_path, check.names = FALSE)

# Indicator name is in the first column header
colnames(raw)[1:6]

# Countries are rows, years are columns
head(raw[, 1:6])

## -----------------------------------------------------------------------------
tidy_df <- tidy_index(csv_path)

head(tidy_df)

## -----------------------------------------------------------------------------
xlsx_path <- system.file("extdata/agriculture_land.xlsx",
                          package = "tidygapminder")

tidy_index(xlsx_path)

## -----------------------------------------------------------------------------
dir_path <- system.file("extdata", package = "tidygapminder")

result <- tidy_bunch(dir_path)

# One tibble per file, named after the indicator
names(result)

head(result$life_expectancy_years)

## -----------------------------------------------------------------------------
combined <- tidy_bunch(dir_path, combine = TRUE)

head(combined)

## ----error = TRUE-------------------------------------------------------------
try({
# File does not exist
tidy_index("path/to/missing_file.csv")

# Unsupported format
tidy_index(tempfile(fileext = ".ods"))

# Directory does not exist
tidy_bunch("path/to/missing_dir")
})

