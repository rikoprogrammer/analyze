
example_df = data.frame(x = rnorm(100), y = rnorm(100),
                        gender = c(rep('F',35), rep('M',65)))

#' Visualize data
#'
#' @param data A data frame containing variables
#' @param x Any variable you want to visualize
#' @param y Another variable you want to visualize
#' @param cat_var Any character variable
#' @param title Title of the plot
#' @param xlab Label for x axis
#' @param ylab Label for y axis
#' @param fill Label for the legend
#'
#' @return a graph
#' @export graph
#'
#' @examples
#'
#' example_df = data.frame(x = rnorm(100), y = rnorm(100),gender = c(rep('F',35), rep('M',65)))
#' graph(data = example_df, x = example_df$x)
#'


graph <- function(data = data, x = NULL, y = NULL, cat_var = NULL,
                  title = NULL, xlab = NULL, ylab = NULL, fill = NULL)
{

  if(is.numeric({{x}}) == TRUE & is.numeric({{y}}) == TRUE)

  {
    if(is.null({{x}}) & is.null({{y}})) {
      stop("Provide atleast one variable to produce a graph.")
    }

    if(is.null({{x}}) | is.null({{y}})) {
      if(is.null({{x}})) {

        ggplot2::ggplot(data, ggplot2::aes(x = {{y}})) +
          ggplot2::geom_histogram() +
          ggplot2::labs(title = title,
                        y = ylab)
      }
      else if(is.null({{y}})) {
        ggplot2::ggplot(data, ggplot2::aes(x = {{x}})) +
          ggplot2::geom_histogram() +
          ggplot2::labs(title = title,
                        x = xlab)
      }
    }
    else if(!(is.null({{x}}) & is.null({{y}}))) {

      ggplot2::ggplot(data, ggplot2::aes(x = {{x}}, y = {{y}})) +
        ggplot2::geom_point() +
        ggplot2::labs(title = title,
                      x = xlab,
                      y = ylab)
    }
  }

  else if(is.null({{x}}) == TRUE & is.null({{y}})  == TRUE &
          is.null({{cat_var}}) == FALSE)
  {

    ggplot2::ggplot(data, ggplot2::aes(as.factor(cat_var),
                                       fill = as.factor(cat_var))) +
      ggplot2::geom_bar() +
      ggplot2::labs(title = title,
                    x = xlab,
                    fill = fill)


  }

}
