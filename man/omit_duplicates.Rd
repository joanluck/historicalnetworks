% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/omit_duplicates.R
\name{omit_duplicates}
\alias{omit_duplicates}
\title{omit_duplicates}
\usage{
omit_duplicates(df, exact = FALSE)
}
\arguments{
\item{corpus}{A dataframe representing a corpus of downloaded texts generated by \code{\link[build_corpus]{build_corpus}}}

\item{strict}{Should works be considered duplicates only if they share both the same author's last name and the same city (along with matching title, publication date, and volume number)?}
}
\value{
A dataframe
}
\description{
\code{omit_duplicates}
}
\details{
Because the Internet Archive's collection of texts includes many works more than once,
the output created by `build_corpus` will likely contain duplicates.  `omit_duplicates`
takes a fairly conservative approach to filtering out these duplicates.  By default, the
function considers works to be duplicates if the first ten words of the title are identical
and they have the same publication date, volume number, and either the same author's 
last name, or the same city of publication (formatting issues are particularly common for 
these two pieces of metadata).  Setting the `exact` argument to `TRUE` will only consider
works to be duplicates if they share both the same author's last name and the same city
of publication.
}
\examples{

}
