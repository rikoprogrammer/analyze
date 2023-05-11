
# analyze

<!-- badges: start -->
<!-- badges: end -->

The goal of analyze is to help people to rapidly explore their data

## Installation

You can install the development version of analyze from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("rikoprogrammer/analyze")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(analyze)
## basic example code

x <- "alfa,bravo,charlie,delta"
str_split_one(x, pattern = ",")
str_split_one(x, pattern = ",", n = 2)
```

