
library(devtools)

usethis::use_git()

usethis::use_r("strsplit1.r")

devtools::load_all()

(x <- "alfa,bravo,charlie,delta")

strsplit1(x, split = ",")

#exists("strsplit1", where = globalenv(), inherits = FALSE)

devtools::check()

usethis::use_mit_license()

devtools::document()

devtools::check()

#lets install

devtools::install()

#lets use the packag

library(analyze)

(x <- "alfa,bravo,charlie,delta")

analyze::strsplit1(x, split = ",")


#lets do some testing

usethis::use_testthat()

usethis::use_test('strsplit1')

devtools::load_all()

devtools::test()

#use functions in other packages

usethis::use_package('stringr')

usethis::rename_files("strsplit1", "str_split_one")

devtools::document()

devtools::load_all()
