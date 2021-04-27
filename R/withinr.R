#' Location Within a certain Radius
#'
#' The goal of withinr package is to find a location index within a certain Radius and a closest location.
#' You need to rename column 'latitude' to 'lat' and 'longitude' to 'lon'.
#' Distance unit is meter(m).
#' @param longitude numeric
#' @param latitude numeric
#' @param data data.frame
#' @param dist numeric
#'
#' @return index numeric
#' @export
#'
#' @examples
#' df_sample <- data.frame(lon =  c(128.1, 128, 128.6, 135), lat = c(37, 37.1, 37.5, 42))
#' withinr(128, 37, df_sample, 15000)
withinr <- function(longitude, latitude, data, dist){
  # target location
  target = c(longitude, latitude)
  # close location
  close_list = c()
  for(i in 1:nrow(data)){
    # calculate distance
    location = c(data['lon'][i,], data['lat'][i,])
    if(geosphere::distGeo(target, location) <= dist){
      close_list = c(close_list, i)
    }
  }
  return(close_list)
}
