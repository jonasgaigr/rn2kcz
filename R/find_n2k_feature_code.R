find_n2k_feature_code <- function(target_nazev_lat) {
  sites_subjects <- rn2kcz::load_n2k_sites()
  target_feature_code <- sites_subjects %>%
           dplyr::filter(nazev_lat == target_nazev_lat) %>%
           dplyr::pull(feature_code) %>%
           base::unique()
  
  return(target_feature_code)
}