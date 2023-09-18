readline() |>
  str_replace_all("[a-z]+"," ") |>
  str_trim() |>
  str_replace_all(" ","-")