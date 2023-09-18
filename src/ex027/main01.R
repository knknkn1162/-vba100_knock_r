read_excel("../ExcelVBAPractice.xls", sheet="練習27") |>
  group_by(支店) |>
  group_walk(\(x,y) write_excel_csv(x, str_glue("{y}.csv")))