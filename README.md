
# Analyze

<!-- badges: start -->
<!-- badges: end -->

The goal of analyze is to help people to rapidly explore their data through
summary statistics, frequency tabulation and visualizations

## Installation

You can install the development version of analyze from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("rikoprogrammer/analyze")
```

## Example

This is a basic example which shows you how request for summary statistics and frequency table:

``` r
library(analyze)
## basic example code

example_df = data.frame(x = rnorm(100), y = rnorm(100),
gender = c(rep('F',35), rep('M',65)))
summarize(example_df, var_list = c(x,y), data_type = 'continuous')
summarize(example_df, var_list = gender, data_type = 'categorical')
```

