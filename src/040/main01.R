1:3 |>
  map(possibly(\(x) read_excel(str_glue("books/book{x}.xlsx"), sheet="2020年12月"), NULL)) |>
  list_rbind() |>
  print()