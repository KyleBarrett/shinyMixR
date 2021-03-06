% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit_plot.r
\name{fit_plot}
\alias{fit_plot}
\title{Create fit plot}
\usage{
fit_plot(dfrm, type = "xpose", mdlnm = NULL, outnm = NULL, ...)
}
\arguments{
\item{dfrm}{data frame as created by the nlmixr function}

\item{type}{character defining the type of plot that should be created. currently
"xpose" and "user" are supported for xpose or ggplot style of plots}

\item{mdlnm}{character with name of the model}

\item{outnm}{character with name of the output file (see details)}

\item{...}{additional arguments passed to \code{\link[R3port]{ltx_plot}} or \code{\link[R3port]{html_plot}}}
}
\value{
in case no outnm is defined a ggplot object will be returned otherwise
  the results are saved to disk
}
\description{
Creates a fit plot either using the xpose.nlmixr package or using a
default ggplot call
}
\details{
In case a model is saved, a directory with the name of the model is created within the
  analysis folder of the current project. Then within this folder the file is saved as outnm.
  This method was chosen so the interface can easily index applicable files for a certain model.
  However, this means that output is alwasy saved in this directly regardless of the location of outnm
}
\examples{

\dontrun{
 fit_plot(res)
}
}
\author{
Richard Hooijmaijers
}
