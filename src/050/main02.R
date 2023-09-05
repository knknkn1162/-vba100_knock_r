1:30 |>
  accumulate(\(acc, nxt) c(acc[2:3], sum(acc)), .init=c(0,0,1)) |>
  map(\(x) x[1]) |>
  unlist() |>
  print()