data <- read.csv("../adn-2026/data/data2-zajecia-przyklad1.csv")

print(VIM::aggr(data))

n_distinct(data[,"gmina"])
n_distinct(data[,"rok"])

data |>
  subset(select=c(gmina, rok, lud_na_1k)) |>
  setDT() |>
  dcast(gmina ~ rok, value.var = "lud_na_1k") |>
  VIM::aggr(plot = F)  |>
  summary()