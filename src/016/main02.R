"\n無駄な\n\n改行を\n\n\n削除\n\n" |>
  str_split_1("\n") |>
  (\(x) x[x != ""])() |>
  str_flatten()