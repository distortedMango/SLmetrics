# script: Balanced Accuracy
# date: 2024-12-18
# author: Serkan Korkmaz, serkor1@duck.com
# objective: Generate methods for balanced accuracy
# script start;

#' @inherit accuracy
#' 
#' @title Balanced Accuracy
#' 
#' @description
#' A generic function for the (normalized) balanced [accuracy](https://arxiv.org/abs/2008.05756).
#' Use [weighted.baccuracy()] for the weighted balanced [accuracy](https://arxiv.org/abs/2008.05756).
#' 
#' @param adjust A [logical] value (default: [FALSE]). If [TRUE] the metric is adjusted for random chance \eqn{\frac{1}{k}}.
#' @param na.rm A [logical] values (default: [TRUE]).  If [TRUE] calculation of the metric is based on valid classes.
#' 
#' @section Definition:
#' Let \eqn{\hat{\alpha} \in [0, 1]} be the proportion of correctly predicted classes. If `adjust == false`, the balanced [accuracy](https://arxiv.org/abs/2008.05756) of the classifier is calculated as,
#'
#' \deqn{
#'   \hat{\alpha} = \frac{\text{sensitivity} + \text{specificty}}{2}
#' }
#' 
#' otherwise,
#' 
#' \deqn{
#'   \hat{\alpha} = \frac{\text{sensitivity} + \text{specificty}}{2} \frac{1}{k}
#' }
#' 
#' Where:
#' 
#' - \eqn{k} is the number of classes
#' - \eqn{\text{sensitivity}} is the overall [sensitivity](https://developers.google.com/machine-learning/crash-course/classification/accuracy-precision-recall#recall_or_true_positive_rate), and
#' - \eqn{\text{specificty}} is the overall [specificty](https://developers.google.com/machine-learning/crash-course/classification/accuracy-precision-recall#recall_or_true_positive_rate)
#' 
#'
#' @returns
#'
#' A [numeric]-vector of [length] 1
#'
#' @example man/examples/scr_BalancedAccuracy.R
#'
#' @family Classification
#' @family Supervised Learning
#'
#' @export
baccuracy <- function(...) {
  UseMethod(
    generic = "baccuracy",
    object  = ..1
  )
}

#' @rdname baccuracy
#' @export
weighted.baccuracy <- function(...) {
  UseMethod(
    generic = "weighted.baccuracy",
    object  = ..1
  )
}

# script end;
