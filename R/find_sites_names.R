#' List Natura 2000 site names established for a target feature
#'
#' The function returns a list of Natura 2000 site names established for a given target feature (species or habitat)
#' @param target_feature_code feature code of the target feature (species or habitat)
#' @return List of Natura 2000 site names established for the target feature
#' @examples 
#' phengaris_nausithous_sites <- find_sites_names(6179)
#' phengaris_nausithous_sites
#' [1] "Rakovník - za koupalištěm" "Bohostice"                 "Černý Orel"                "Louky u Drahlína"         
#' [5] "Čábuze"                    "Onšovice - Mlýny"          "Žofina Huť"                "Boletice"                 
#' [9] "Blanský les"               "Kamenec"                   "Hradiště"                  "Bezručovo údolí"          
#' [13] "Východní Krušnohoří"       "Horní Ploučnice"           "Podtrosecká údolí"         "Ronov - Vlhošť"           
#' [17] "Vladivostok"               "Javorka a Cidlina - Sběř"  "Kačerov"                   "Uhřínov - Benátky"        
#' [21] "Bohdanečský rybník"        "Anenské údolí"             "Ratajské rybníky"          "Louky u Přelouče"         
#' [25] "Niva Fryšávky"             "Údolí Svratky u Krásného"  "Na Ostrážné"               "Protivanov"               
#' [29] "Vidnava"                   "Litovelské Pomoraví"       "Morava - Chropyňský luh"   "Uhliska"                  
#' [33] "Bílé Karpaty"              "Jakartovice"               "Jilešovice - Děhylov"      "Poodří"
#' @export
find_sites_names <- function(target_feature_code) {
  sites_subjects <- rn2kcz::load_n2k_sites()
  site_names <- unique(sites_subjects[sites_subjects$site_type == "EVL" & sites_subjects$feature_code == target_feature_code, "site_name"])
  return(site_names)
}