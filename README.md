
# analyze

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

This is a basic example which shows you how request for summary statistics and frequency table and also request for a graph

``` r
library(analyze)
## basic example code

# Summary stats and frequency counts

analyze::summarize(example_df, var_list = c(x,y), data_type = 'continuous')
analyze::summarize(example_df, var_list = gender, data_type = 'categorical')

# Visualize data
# 
analyze::graph(example_df,  cat_var = example_df$gender,
               title = "Distribution of gender",
               xlab = "Gender",
               fill = "Gender")
```

