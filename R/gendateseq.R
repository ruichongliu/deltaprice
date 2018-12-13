#' @title genDateSeq
#'
#' @description
#' \code{genDateSeq} geneates a list of dates for query
#'
#' @param from starting date
#' @param to end date
#' @param by increment of the sequence, default = week, options: day, week, month
#' @export
#' @return a vector of class "Date", in formate m/d/yyyy
#' @examples
#' genDateSeq("2010/1/1", "2018/1/1", "year")
#' genDateSeq("2018/1/1", "2018/3/1")

genDateSeq <- function(from, to, by="week") {
    DateSeq <- seq(from = as.Date(from), to = as.Date(to), by = by)
    DateSeq <- format(DateSeq, "%m/%d/20%y")

    return(DateSeq)
}
