## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----echo=FALSE, fig.height=3.94, fig.width=7, message=FALSE, warning=F----
data("pricedf", package="deltaprice")
library(ggplot2)
ggplot(pricedf, aes(departure, price, fill=departure)) + geom_violin(scale="area")

## ----echo=FALSE, fig.height=3.94, fig.width=7, message=FALSE, warning=FALSE----
data("pricedf", package="deltaprice")
library(ggplot2)
ggplot(pricedf, aes(price)) + geom_histogram() + facet_grid(departure ~ return)

