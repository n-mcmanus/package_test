#' Fish function
#'
#' This function returns the most common, least common, and
#' total number of fish based on an input vector of fish names
#' @param fish is a vector/txt file with list of fish names
#' @author Nick Mc
#' @return list of common fish, rarest fish, and total count

fish_counts <- function(fish) {
  fish_vect <- as.vector(fish[,1])
  fish_fact <- as.factor(fish_vect)

  common_fish <- names(which.max(summary(fish_fact)))
  rarest_fish <- names(which.min(summary(fish_fact)))
  total_count <- sum(summary(fish_fact))

  fish_list <- c(common_fish, rarest_fish, total_count)

  return(fish_list)
}
