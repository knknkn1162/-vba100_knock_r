c("取引先マスタ", "支払パターン") |>
  reduce(\(acc, nxt) acc |> inner_join(read_excel(path="ex085.xlsm", sheet=nxt)), .init = read_excel(path="ex085.xlsm", sheet="入金予定")) |>
  mutate(tmp = if_else(締め日 == "末", day(ceiling_date(請求日, "month")-days(1)),  parse_number(締め日))) |>
  mutate(due_date = ymd(str_glue("{y}/{m}/{d}", y = year(請求日), m = month(請求日), d = tmp))) |>
  mutate(due_date = if_else(due_date >= 請求日, due_date, due_date + months(1))) |>
  mutate(pay0 = due_date + months(parse_number(支払月))) |>
  mutate(tmp = if_else(支払日 == "末", day(ceiling_date(pay0, "month")-days(1)),  parse_number(支払日))) |>
  mutate(入金予定日 = ymd(str_glue("{y}/{m}/{d}", y = year(pay0), m = month(pay0), d = tmp))) |>
  select(取引先, 取引先名, 請求日, 入金予定日) |>
  print(n=Inf)