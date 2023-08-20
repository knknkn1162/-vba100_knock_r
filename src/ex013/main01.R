read_excel("../ExcelVBAPractice.xls", sheet="練習13") |>
  # set too_few because of "さいたま"
  separate_wider_delim(any_of(c("都道府県名", "県庁所在地")), delim = "(", names_sep = "", too_few = "align_start") |>
  mutate(`都道府県名（県庁所在地）` = str_glue("{`都道府県名1`}({`県庁所在地1`})") ) |>
  print()