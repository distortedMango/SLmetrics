# script: Mean Absolute Error
# date: 2024-10-10
# author: Serkan Korkmaz, serkor1@duck.com
# objective: Generate Methods
# script start;

#' @inherit huberloss
#' 
#' @title Mean Absolute Error
#'
#' @description 
#' The [mae()]-function computes the [mean absolute error](https://en.wikipedia.org/wiki/Mean_absolute_error) between
#' the observed and predicted <[numeric]> vectors. The [weighted.mae()] function computes the weighted mean absolute error.
#'
#' @section Definition:
#' 
#' The metric is calulated as follows,
#'
#' \deqn{
#'   \frac{\sum_i^n |y_i - \upsilon_i|}{n}
#' }
#' 
#' @example man/examples/scr_MeanAbsoluteError.R
#' 
#' @family Regression
#' @family Supervised Learning
#' 
#' @export
mae <- function(...) {
  UseMethod(
    generic = "mae",
    object  = ..1
  )
}

#' @rdname mae
#' @export
weighted.mae <- function(...) {
  UseMethod(
    generic = "weighted.mae",
    object  = ..1
  )
}

# script end;
