

test_that("summarize function works", {

  test1 = summarize(example_df, var_list = x, data_type = 'continuous')[[2]]

  test2 = summarize(example_df, var_list = gender,
                   data_type = 'categorical')

  expect_equal(test1, round(mean(example_df$x),2))
 # expect_equal(test2, round(mean(example_df$y),2), ignore_attr = TRUE)


})

