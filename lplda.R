#'using lda model to predict
#'
#' @param x_train is a dataset.
#' @param y_train is a dataset.
#' @param x_test is a dataset.
#' @return The prediction of the x_test by the lda model.
lplda=function(x_train,y_train,x_test) {
  library(MASS)
  lda.model <- lda(x_train, grouping = y_train)
  lda.pre <- predict(lda.model, x_test)
  lda.pre
  return(lda.pre)
}
