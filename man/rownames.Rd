% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rownames.R
\name{rownames}
\alias{rownames}
\alias{has_rownames}
\alias{remove_rownames}
\alias{rownames_to_column}
\alias{rowid_to_column}
\alias{column_to_rownames}
\title{Tools for working with row names}
\usage{
has_rownames(.data)

remove_rownames(.data)

rownames_to_column(.data, var = "rowname")

rowid_to_column(.data, var = "rowid")

column_to_rownames(.data, var = "rowname")
}
\arguments{
\item{.data}{A data frame.}

\item{var}{Name of column to use for rownames.}
}
\value{
\code{column_to_rownames()} always returns a data frame.
\code{has_rownames()} returns a scalar logical.
All other functions return an object of the same class as the input.
}
\description{
While a tibble can have row names (e.g., when converting from a regular data
frame), they are removed when subsetting with the \code{[} operator.
A warning will be raised when attempting to assign non-\code{NULL} row names
to a tibble.
Generally, it is best to avoid row names, because they are basically a
character column with different semantics than every other column.

These functions allow to you detect if a data frame has row names
(\code{has_rownames()}), remove them (\code{remove_rownames()}), or convert
them back-and-forth between an explicit column (\code{rownames_to_column()}
and \code{column_to_rownames()}).
Also included is \code{rowid_to_column()}, which adds a column at the start of the
dataframe of ascending sequential row ids starting at 1. Note that this will
remove any existing row names.
}
\examples{
# Detect row names ----------------------------------------------------
has_rownames(mtcars)
has_rownames(trees)

# Remove row names ----------------------------------------------------
remove_rownames(mtcars) \%>\% has_rownames()

# Convert between row names and column --------------------------------
mtcars_tbl <- rownames_to_column(mtcars, var = "car") \%>\% as_tibble()
mtcars_tbl
column_to_rownames(mtcars_tbl, var = "car") \%>\% head()

# Adding rowid as a column --------------------------------------------
rowid_to_column(trees) \%>\% head()

}
