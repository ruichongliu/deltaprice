#' @title genUrl
#'
#' @description
#' \code{genUrl} generate query url specific to the dates and air route specified by the parameters
#'
#' @param originCity fly from
#' @param destinationCity fly to
#' @param departureDate date to depart in m/d/yyyy
#' @param returnDate date to return in m/d/yyyy
#' @export
#' @return query URL :: string
#' @examples
#' remDr <- setup()
#' remDr$open()
#' remDr$navigate(genUrl("JFK", "SEA", "1/1/2019", "2/1/2019"))
genUrl <- function(originCity="LAX", destinationCity="JFK", departureDate, returnDate) {
    return(paste("https://www.delta.com/flight-search/search?action=findFlights&tripType=ROUND_TRIP&priceSchedule=PRICE&originCity=",
                 originCity, "&destinationCity=", destinationCity,
                 "&departureDate=", departureDate, "&departureTime=AT&returnDate=", returnDate,
                 "&returnTime=AT&paxCount=1&searchByCabin=true&cabinFareClass=BE",
                 "&deltaOnlySearch=false&deltaOnly=off&Go=Find%20Flights&meetingEventCode=&refundableFlightsOnly=false",
                 "&compareAirport=false&awardTravel=false&datesFlexible=false&flexAirport=false&paxCounts[0]=1"))
}
