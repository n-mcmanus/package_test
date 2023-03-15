#' Crop Yields
#'
#' This function computes the average crop yield
#' based on the amount of fertilizer and precipitation
#' @param fert the amount of fertilizer
#' @param tp the amount of total precipitation
#' @author Nick Mc
#' @return total yield (units unknown lol)

crop_yield = function(fert, tp) {
  yield = 1.8 * (fert^2) - 0.5 * fert + 0.1 * tp


  return(yield)
}
