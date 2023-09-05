1:30 |>
  reduce(\(acc, nxt) c(acc, sum(acc |> tail(3))), .init=c(0,0,1)) |>
  print()