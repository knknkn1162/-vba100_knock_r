1:12 |>
  map(\(x) 
    read_excel("ex059.xlsm", sheet=x) |>
      write_excel_csv(str_glue("out{y}.csv", y = str_pad(x, 2, pad="0")))
  )