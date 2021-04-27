#' Closest Location
#'
#' The goal of withinr package is to find a location index within a certain Radius and a closest location.
#' You need to rename column 'latitude' to 'lat' and 'longitude' to 'lon'.
#'
#' @param longitude numeric
#' @param latitude numeric
#' @param data data.frame
#'
#' @return index numeric
#' @export
#'
#' @examples
#' df_sample <- data.frame(lon =  c(128.1, 128, 128.6, 135), lat = c(37, 37.1, 37.5, 42))
#' closestr(128, 37, df_sample)
closestr <- function(longitude, latitude, data){
  # target location
  target = c(longitude, latitude)
  # close location
  close_list = c()
  for(i in 1:nrow(data)){
    # calculate distance
    location = c(data['lon'][i,], data['lat'][i,])
    close_list = c(close_list, geosphere::distGeo(target, location))
  }
  return(which.min(close_list))
}
