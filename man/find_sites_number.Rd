% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find_sites_number.R
\name{find_sites_number}
\alias{find_sites_number}
\title{Number of Natura 2000 sites established for target feature}
\usage{
find_sites_number(target_feature_code)
}
\arguments{
\item{target_feature_code}{feature code of the target feature (species or habitat)}
}
\value{
Number of Natura 2000 site names established for the target feature
}
\description{
The function returns a nember of Natura 2000 site names established for a given target feature (species or habitat)
}
\examples{
phengaris_nausithous_sites_number <- find_sites_number(6179)
phengaris_nausithous_sites_number
[1] 36
}
