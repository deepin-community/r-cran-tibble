% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enframe.R
\name{enframe}
\alias{enframe}
\alias{deframe}
\title{Converting vectors to data frames, and vice versa}
\usage{
enframe(x, name = "name", value = "value")

deframe(x)
}
\arguments{
\item{x}{A vector (for \code{enframe()}) or a data frame with one or two columns
(for \code{deframe()}).}

\item{name, value}{Names of the columns that store the names and values.
If \code{name} is \code{NULL}, a one-column tibble is returned; \code{value} cannot be \code{NULL}.}
}
\value{
For \code{enframe()}, a \link{tibble} with two columns (if \code{name} is not \code{NULL}, the default)
or one column (otherwise).

For \code{deframe()}, a vector (named or unnamed).
}
\description{
\code{enframe()} converts named atomic vectors or lists to one- or two-column
data frames.
For a list, the result will be a nested tibble with a column of type \code{list}.
For unnamed vectors, the natural sequence is used as name column.

\code{deframe()} converts two-column data frames to a named vector or list,
using the first column as name and the second column as value.
If the input has only one column, an unnamed vector is returned.
}
\examples{
enframe(1:3)
enframe(c(a = 5, b = 7))
enframe(list(one = 1, two = 2:3, three = 4:6))
deframe(enframe(3:1))
deframe(tibble(a = 1:3))
deframe(tibble(a = as.list(1:3)))
}
