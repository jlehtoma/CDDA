## library() calls go here
suppressMessages({
  library(conflicted)
  library(curl)
  library(dotenv)
  library(dplyr)
  library(drake)
  library(fs)
  library(httr)
  library(R.utils)
  library(readr)
})

conflict_prefer("filter", "dplyr")
