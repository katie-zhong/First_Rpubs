library(tidyverse)
head(mtcars)

ggplot(data = mtcars,
       mapping = aes(x = cyl,
                     y = mpga)) +
  geom_col()