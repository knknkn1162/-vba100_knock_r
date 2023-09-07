1:12 |>
  map(\(x) (ymd("2020/4/1") + months(x-1)) |> format("%Y年%m月")) |>
  map(\(x) read_excel("ex063.xlsm", sheet=x)) |>
  list_rbind() |>
  print(n=Inf)