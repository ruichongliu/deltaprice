#' @title setup
#'
#' @description
#' \code{setup} set up connection to remote browser server
#'
#' @param browserName browser to use, default = chrome
#' @param remoteServerAddr IP of server running Selenium server, default = localhost
#' @param port port running Selenium server, default = 4444
#'
#' @return Returns a Selenium connection object
#' @examples
#' remDr <- setup()
#' remDr$open()
#' remDr$navigate("https://www.google.com")
#' @export
#' @import RSelenium

setup <- function(browserName="chrome", remoteServerAddr="localhost", port=4444L) {
    library(RSelenium)
    remDr <- remoteDriver(browserName=browserName, remoteServerAddr=remoteServerAddr, port=port)

    return(remDr)
}
