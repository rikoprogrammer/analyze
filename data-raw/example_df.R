## code to prepare `example_df` dataset goes here

example_df = data.frame(x = rnorm(100), y = rnorm(100),
                        gender = c(rep('F',35), rep('M',65)))

usethis::use_data(example_df, overwrite = TRUE)
