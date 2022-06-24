# library(police)
# 
# police |>
#   select(summary, po_race, district_occurrence, investigative_findings) |>
#   
#   mutate(race = str_detect(po_race, pattern = "rac")) |>
#   filter(police, race == TRUE)

nhanes |>
  mutate(weight = weight*2.2) |>
  mutate(height = height/30.48) |>
  
  select(gender, weight, height, bmi) |>
  drop_na(weight, height) |>
  
  gg_plot(aes(x = weight,
              y = height,
              color = bmi)) +
  geom_jitter()