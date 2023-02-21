#' Load Natura 2000 sites
#'
#' This function is used to load the up-to-date dataset of Natura 2000 sites in the Czech 
#' Republic available at the <https://data.nature.cz/sds/16>.
#' @param NULL the function takes no arguments
#' @return The dataset of Natura 2000 sites in the Czech Republic
#' @export load_n2k_sites
#' @examples 
#' natura_sites <- load_n2k_sites()
#' 
load_n2k_sites <- function(return = FALSE, envir = globalenv()) {
  
  sites_subjects <- openxlsx::read.xlsx("https://webgis.nature.cz/publicdocs/opendata/natura2000/seznam_predmetolokalit_Natura2000_440_2021.xlsx",
                                        sheet = 1)
  colnames(sites_subjects) <- c("site_code", "site_name", "site_type", "feature_type", "feature_code", "nazev_cz", "nazev_lat")
  
  if(return == TRUE) {
    
    assign("sites_subjects", sites_subjects, envir = envir)
    
    return(sites_subjects)
  
  } else {
    
    assign("sites_subjects", sites_subjects, envir = envir)
    
  }
  
}

