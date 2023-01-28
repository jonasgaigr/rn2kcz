#' Natura 2000 site name
#'
#' The function returns a Natura 2000 site name given its site code
#' @param target_site_code site code of the target protected area
#' @return site name
#' @examples 
#' sumava_name <- sitecode_to_sitename("CZ0314024")
#' phengaris_nausithous_sites
#' [1] "Šumava"
#' @export
sitecode_to_sitename <- function(target_site_code) {
  
  sites_subjects <- rn2kcz::load_n2k_sites()
  
  target_site_name <- unique(subset(sites_subjects, site_type == "EVL" & site_code == target_site_code)$site_name)
  
  return(target_site_name)

}