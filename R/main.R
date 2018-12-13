
#' @title main
#'
#' @description
#' \code{main} scrape the site with the given data
#'
#' @param originCity fly from
#' @param destinationCity fly yo
#' @param dateGrid a list of departure and return dates
#' @param remDr remote driver selenium object
#' @param sleep wait time for dynamic contents, default = 5
#' @export
#' @import RSelenium
#' @import stringr
#' @return departure date | return date | price  :: dataframe
#' @examples
#' remDr <- setup()
#' remDr$open()
#' departD <- seq(as.Date("2019/1/1"), as.Date("2019/2/1"), "week")
#' departD <- format(departD, "%m/%d/20%y")
#' returnD <- seq(as.Date("2019/1/2"), as.Date("2019/2/2"), "week")
#' returnD <- format(returnD, "%m/%d/20%y")
#' dateGrid <- data.frame("depart"=departD, "return"=returnD)
#' main("LAX", "JFK", dateGrid, remDr)

main <- function(originCity, destinationCity, dateGrid, remDr, sleep=5L) {
    library(RSelenium)
    library(stringr)
    pricedf <- data.frame()
    for(i in 1:dim(dateGrid)[1]) {
        remDr$navigate(genUrl(originCity, destinationCity, dateGrid[i,1], dateGrid[i,2]))
        Sys.sleep(sleep)
        webElement <- remDr$findElements('class', "priceHolder")
        webElement %>%
            sapply(., function(x) x$getElementText()) %>%
            str_replace_all(., " ", "") %>%
            str_replace_all(., "\\$", "") %>%
            str_replace_all(., ",", "") %>%
            as.numeric(.) -> price
        pricedf <- rbind(pricedf, data.frame(departure = dateGrid[i,1], return = dateGrid[i,2], price=price))
    }

    return(pricedf)
}
