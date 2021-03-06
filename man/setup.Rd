% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setup.R
\name{setup}
\alias{setup}
\title{setup}
\usage{
setup(browserName = "chrome", remoteServerAddr = "localhost",
  port = 4444L)
}
\arguments{
\item{browserName}{browser to use, default = chrome}

\item{remoteServerAddr}{IP of server running Selenium server, default = localhost}

\item{port}{port running Selenium server, default = 4444}
}
\value{
Returns a Selenium connection object
}
\description{
\code{setup} set up connection to remote browser server
}
\examples{
remDr <- setup()
remDr$open()
remDr$navigate("https://www.google.com")
}
