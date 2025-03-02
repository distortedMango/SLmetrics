#include <Rcpp.h>
#include "regression_MeanPercentageError.h"
using namespace Rcpp;

//' @rdname mpe
//' @method mpe numeric
//' @export
// [[Rcpp::export(mpe.numeric)]]
double mpe(const Rcpp::NumericVector& actual, const Rcpp::NumericVector& predicted)
{
    // 1) extract pointers to 
    // to data, and size
    const double* ptr_actual    = actual.begin();
    const double* ptr_predicted = predicted.begin();
    std::size_t n = actual.size();

    // 2) calculate and
    // return value
    return MPE::compute(ptr_actual, ptr_predicted, n);
}

//' @rdname mpe
//' @method weighted.mpe numeric
//' @export
// [[Rcpp::export(weighted.mpe.numeric)]]
double weighted_mpe(const Rcpp::NumericVector& actual, const Rcpp::NumericVector& predicted, const Rcpp::NumericVector& w)
{
    // 1) extract pointers to 
    // to data, and size
    const double* ptr_actual    = actual.begin();
    const double* ptr_predicted = predicted.begin();
    const double* ptr_w         = w.begin();
    std::size_t n = actual.size();

    // 2) calculate and
    // return value
    return MPE::compute(ptr_actual, ptr_predicted, ptr_w, n);
}
