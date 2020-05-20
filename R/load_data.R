##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

load_data <- function(csv) {

  dat <- read_csv(csv) %>% 
    filter(cddaCountryCode == "FI")
}
