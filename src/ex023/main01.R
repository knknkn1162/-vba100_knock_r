date <- "2012/2/3"
name <- "藤"
read_excel("../ExcelVBAPractice.xls", sheet="練習23_データ") |>
  filter(str_detect(名前, str_glue(".*{name}.*")), (str_length(date) == 0 | 日付 == ymd(date))) |>
  print()