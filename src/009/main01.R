read_excel("VBA100_09.xlsm") |>
  rowwise() |>
  filter(sum(c_across(英語:社会)) >= 350, if_all(英語:社会, \(x) x >= 50)) |>
  print()