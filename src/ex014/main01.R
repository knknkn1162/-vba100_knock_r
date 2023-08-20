read_excel("../ExcelVBAPractice.xls", sheet="練習14") |>
  filter(区分 != "D" | is.na(区分)) |>
  print()