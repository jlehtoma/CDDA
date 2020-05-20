the_plan <-
  drake_plan(
  ## Plan targets in here.
  csv = get_data(),
  data = load_data(csv)
)
