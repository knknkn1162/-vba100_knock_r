size <- 2
tibble(
    left = sample.int(100, size=size, replace=TRUE),
    op = sample("+-*/" |> str_split_1(""), size = size, replace=TRUE),
    right=sample.int(100, size=size, replace=TRUE)
  ) |>
  mutate(op2 = if_else(op == "/", "%/%", op), expr = str_c(left, op2, right)) |>
  rowwise() |>
  mutate(ans = eval(parse(text=expr))) |>
  group_map(\(x,y) {print(str_glue("Q. {expr}=", expr = x$expr)); (readline() |> parse_number()) == x$ans}) |>
  unlist() |>
  all() |>
  print()