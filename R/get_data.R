##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

get_data <- function() {
  # Define CDDA target URL
  target_url <- "https://www.eea.europa.eu/data-and-maps/data/nationally-designated-areas-national-cdda-14/cdda/cdda-csv-files/at_download/file"
  # Create data dir if it doesn't exist
  dir_create("data")
  # Download data
  target_file = "data/CDDA_data.zip"
  download.file(target_url, destfile = target_file, mode = 'wb')
  # Unzip data, the result will be a csv file path
  unzip(target_file, exdir = "data")
}
