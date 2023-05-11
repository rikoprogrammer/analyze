
#data(mpg, package = "ggplot2", envir = environment())



#' Clinical Reporting
#' This package is useful for generating summary statistics for continuous
#' variables and frequency counts for categorical variables.
#'
#' @param data this is the name of the incoming data set
#' @param var_list this is the list of variables
#' @param data_type this specifies whether the variables are continuous or
#'                  categorical.
#'
#' @return A data frame if var_list contains continuous variables otherwise
#'         it returns a tabyl data frame.
#' @export
summarize <- function(example_df, var_list,
                      data_type = c('continuous','categorical')){
  .....
}
#'
#' @examples
#' example_df = data.frame(x = rnorm(100), y = rnorm(100),
#' gender = c(rep('F',35), rep('M',65)))
#' summarize(example_df, var_list = c(x,y), data_type = 'continuous')
#' summarize(example_df, var_list = gender, data_type = 'categorical')
#'
#'

example_df = data.frame(x = rnorm(100), y = rnorm(100),
                         gender = c(rep('F',35), rep('M',65)))

summarize <- function(data, var_list, data_type = c('continuous','categorical')) {


  data_type = match.arg(data_type)

  if(data_type == 'continuous')
  {


    data2 = dplyr::select(data, {{var_list}})


    sum_stats <- function(z) {
      N    <- apply(z, 2, function(x) length(which(!is.na(x))))
      Mean <- apply(z, 2, mean, na.rm = T)
      Var  <- apply(z, 2, stats::var,  na.rm = T)
      SD   <- apply(z, 2, stats::sd,   na.rm = T)
      Min  <- apply(z, 2, min,  na.rm = T)
      Max  <- apply(z, 2, max,  na.rm = T)
      return (data.frame(N, Mean = round(Mean,2), Var = round(Var,2),
                         SD = round(SD,2), Min, Max, Range = Max-Min))
    }

    sum_stats(data2)


  }else if(data_type == 'categorical')
  {

    data3 = dplyr::select(data, {{var_list}})


    janitor::tabyl(data3, {{var_list}})

  }
}

