# withinr

The goal of **withinr** package is to find a location index within a certain Radius and a closest location. You can use **withinr** function and **closestr** in this package. You need to rename column 'latitude' to 'lat' and 'longitude' to 'lon'. Distance unit is meter(m).

## Installation

You can install withinr like so:

``` r
devtools::install_github("bominkm/withinr")
```

## Example

This is a basic example which shows you how to solve a common problem:

```{r example}
library(withinr)
df_sample <- data.frame(lon =  c(128.1, 128, 128.6, 135), lat = c(37, 37.1, 37.5, 42))
withinr(128, 37, df_sample, 15000)
closestr(128, 37, df_sample)
```
