##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

get_data <- function(target_url) {
  # Create data dir if it doesn't exist
  dir_create("data")
  # Download data
  target_file = "data/CDDA_data.zip"
  curl_download(target_url, target_file)
  # Unzip data, the result will be a csv file path
  unzip(target_file, exdir = "data")
}
