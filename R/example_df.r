

#' Example data set
#'
#'
#' @format ## `example_df`
#' A data frame with 100 rows and 3 columns:
#' \describe{
#'   \item{data}{A data frame}
#'   \item{x}{Any variable you want to visualize}
#'   \item{y}{Another variable you want to visualize}
#'   ...
#' }


example_df <- function()
{

  example_df = data.frame(x = rnorm(100), y = rnorm(100),
                          gender = c(rep('F',35), rep('M',65)))

  usethis::use_data(example_df)
}
