library(police)

police |>
  select(summary, po_race, district_occurrence, investigative_findings) |>
  
  mutate(race = str_detect(po_race, pattern = "rac")) |>
  filter(police, race == TRUE)