# rn2kcz
<b>rn2kcz</b> is a package for working with data on the Natura 2000 network in the Czech Republic. It is being developed to simplify work with the data on the protected species and habitats and facilitate the data maintained by the Nature Conservation Agency of the Czech Republic.

# Instalation
```
install.packages("remotes")
remotes::install_github("jonasgaigr/rn2kcz")
```
# Usage
```
library(rn2kcz)

load_n2k_sites()
head(sites_subjects)
```
