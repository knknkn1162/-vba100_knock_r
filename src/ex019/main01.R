read_excel("../ExcelVBAPractice.xls", sheet="練習19_new", col_names=FALSE) |>
  t() |>
  as_tibble() |>
  slice_tail(n = -1) |>
  mutate(V1 = excel_numeric_to_date(as.numeric(V1)), V2 = as.numeric(V2), V3 = as.numeric(V3), 客単価 = V2/V3) |>
  print()