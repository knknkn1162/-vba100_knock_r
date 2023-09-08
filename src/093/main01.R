0:10 |>
  (\(x) ymd("2020/04/01") + months(x))() |>
  format("%Y%m") |>
  map(possibly(\(x) read_excel(str_glue("月別/{x}.xlsx")))) |>
  list_rbind() |>
  group_by(支店CD) |>
  group_map(\(tb, key) write_excel_csv(tb, str_glue("支店別/{key}.csv")))