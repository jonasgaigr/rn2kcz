#' Number of Natura 2000 sites established for target feature
#'
#' The function returns a nember of Natura 2000 site names established for a given target feature (species or habitat)
#' @param target_feature_code feature code of the target feature (species or habitat)
#' @return Number of Natura 2000 site names established for the target feature
#' @examples 
#' phengaris_nausithous_sites_number <- find_sites_number(6179)
#' phengaris_nausithous_sites_number
#' [1] 36
#' @export
find_sites_number <- function(target_feature_code) {
  sites_subjects <- rn2kcz::load_n2k_sites()
  site_names <- length(unique(sites_subjects[sites_subjects$site_type == "EVL" & sites_subjects$feature_code == target_feature_code, "site_name"]))
  return(site_names)
}