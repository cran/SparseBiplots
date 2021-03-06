% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LASSO_HJBiplot.R
\name{LASSO_HJBiplot}
\alias{LASSO_HJBiplot}
\title{LASSO HJ Biplot}
\usage{
LASSO_HJBiplot(X, Lambda, Transform.Data = 'scale', Operator = 'Hard-Thresholding')
}
\arguments{
\item{X}{array_like; \cr
A data frame which provides the data to be analyzed. All the variables must be numeric.}

\item{Lambda}{float; \cr
Tuning parameter for the LASSO penalty}

\item{Transform.Data}{character; \cr
A value indicating whether the columns of X (variables) should be centered or scaled. Options are: "center" that removes the columns means and "scale" that removes the columns means and divide by its standard deviation. Default is "scale".}

\item{Operator}{character; \cr
The operator used to solve the norm L1. Allowed values are "Soft-Thresholding" and "Hard-Thresholding".}
}
\value{
\code{LASSO_HJBiplot} returns a list containing the following components:
\item{loadings}{  array_like; \cr
          penalized loadings, the loadings of the sparse principal components.
          }

\item{n_ceros}{  array_like; \cr
          number of loadings equal to cero in each component.
          }

\item{coord_ind}{  array_like; \cr
          matrix with the coordinates of individuals.
          }

\item{coord_var}{  array_like; \cr
          matrix with the coordinates of variables.
          }

\item{eigenvalues}{  array_like; \cr
          vector with the eigenvalues penalized.
          }

\item{explvar}{  array_like; \cr
          an vector containing the proportion of variance explained by the first 1, 2,.,k sparse principal components obtained.
          }
}
\description{
This function performs the representation of the SPARSE HJ Biplot applying the LASSO regularization, on the original data matrix, implementing the norm L1.
}
\details{
Algorithm that performs a procedure of contraction and selection of variables. LASSO imposes a penalty that causes the charges of some components to be reduced to zero. By producing zero loadings for some components and not zero for others, the Lasso technique performs selection of variables. As the value of the penalty approaches one, the loadings approach zero.
}
\examples{
 LASSO_HJBiplot(mtcars, Lambda = 0.2, Operator = 'Hard-Thresholding')

}
\references{
\itemize{
 \item Galindo, M. P. (1986). Una alternativa de representacion simultanea: HJ-Biplot. Questiio, 10(1), 13-23.
 \item Tibshirani, R. (1996). Regression shrinkage and selection via the lasso. Journal of the Royal Statistical Society: Series B (Methodological), 58(1), 267-288.
 \item Tibshirani, R. (2011). Regression shrinkage and selection via the lasso: a retrospective. Journal of the Royal Statistical Society: Series B (Statistical Methodology), 73(3), 273-282.
}
}
\seealso{
\code{\link{Plot_Biplot}}
}
\author{
Mitzi Cubilla-Montilla, Carlos Torres-Cubilla, Ana Belen Nieto Librero and Purificacion Galindo Villardon
}
