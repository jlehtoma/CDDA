
# Define CDDA target URL
cdda_url <- "https://www.eea.europa.eu/data-and-maps/data/nationally-designated-areas-national-cdda-14/cdda/cdda-csv-files/at_download/file"

the_plan <-
  drake_plan(
  ## Plan targets in here.
  csv = target(
    get_data(cdda_url),
    trigger = trigger(change = HEAD(cdda_url)$headers[["last-modified"]])
  ),
  data = load_data(csv)
)
