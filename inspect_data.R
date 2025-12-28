library(arrow)
library(dplyr)
library(here)

print("Experience:")
read_parquet(here('data', 'experience.parquet')) %>% print(n=100)

print("Skills:")
read_parquet(here('data', 'skills.parquet')) %>% print(n=100)
