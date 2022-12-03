load_n2k_sites <- function() {
  return(openxlsx::read.xlsx("https://webgis.nature.cz/publicdocs/opendata/natura2000/seznam_predmetolokalit_Natura2000_440_2021.xlsx",
                             sheet = 1) %>%
           dplyr::rename(nazev_lat = "Název.latinsky.(druh)",
                         site_name = "Název.lokality",
                         feature_type = "Typ.předmětu.ochrany",
                         site_type = "Typ.lokality",
                         nazev_cz = "Název.česky",
                         site_code = "Kód.lokality",
                         feature_code = "Kód.fenoménu")
  )
}

#' Názvy EVL podle kódu předmětu ochrany
#'
#' Seznam EVL vyhlašovaných pro daný předmět ochrany 
#' @param F_temp The temperature in degrees Fahrenheit
#' @return The temperature in degrees Celsius
#' @examples 
#' temp1 <- F_to_C(50);
#' temp2 <- F_to_C( c(50, 63, 23) );
#' @export
find_evl_NAZEV <- function(target_feature_code) {
  site_names <- sites_subjects %>%
    dplyr::filter(site_type == "EVL") %>%
    dplyr::filter(feature_code == target_feature_code) %>%
    dplyr::pull(site_name) %>%
    base::unique();
  return()
}

find_evl_NUMBER <- function(target_feature_code) {
  return(sites_subjects %>%
           dplyr::filter(site_type == "EVL") %>%
           dplyr::filter(feature_code == target_feature_code) %>%
           base::nrow()
  )
}

find_evl_NAME_TO_CODE <- function(target_site_name) {
  return(sites_subjects %>%
           dplyr::filter(site_type == "EVL") %>%
           dplyr::filter(site_name == target_site_name) %>%
           dplyr::pull(site_code) %>%
           base::unique()
  )
}

find_evl_HAB_QUAL_perc <- function(target_feature_code, target_site_code) {
  return(spec_habitats %>%
           dplyr::filter(SITECODE == target_site_code) %>%
           dplyr::filter(FEATURE_CODE == target_feature_code) %>%
           dplyr::pull(BIOTOP_PROCENTO)
  )
}

find_evl_TARGETS_name <- function(target_site_code) {
  return(sites_subjects %>%
           dplyr::filter(site_type == "EVL") %>%
           dplyr::filter(site_code == target_site_code) %>%
           dplyr::pull(nazev_cz)
  )
}

find_evl_TARGETS_code <- function(target_site_code) {
  return(sites_subjects %>%
           dplyr::filter(site_type == "EVL") %>%
           dplyr::filter(site_code == target_site_code) %>%
           dplyr::pull(feature_code)
  )
}

find_evl_SITECODE_TO_SITENAME <- function(target_site_code) {
  return(sites_subjects %>%
           dplyr::filter(site_type == "EVL") %>%
           dplyr::filter(site_code == target_site_code) %>%
           dplyr::pull(site_name) %>%
           base::unique()
  )
}

find_evl_SITENAME_TO_SITECODE <- function(target_site_name) {
  return(load_n2k_sites %>%
           dplyr::filter(site_type == "EVL") %>%
           dplyr::filter(site_name == target_site_name) %>%
           dplyr::pull(site_code) %>%
           base::unique()
  )
}

find_N2K_feature_code <- function(target_nazev_lat) {
  return(sites_subjects %>%
           dplyr::filter(nazev_lat == target_nazev_lat) %>%
           dplyr::pull(feature_code) %>%
           base::unique()
  )
}

find_N2K_name <- function(target_feature_code) {
  return(sites_subjects %>%
           dplyr::filter(feature_code == target_feature_code) %>%
           dplyr::pull(nazev_lat) %>%
           base::unique()
  )
}
