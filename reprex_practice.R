# ---------- Practicing reprex ------------------

library(tidyverse)
library(palmerpenguins)

### NOT A REPREX
penguins |>
  select(species, body_mass_g, flipper_length_mm, year) |>
  filter(species == "Chinstrap") |>
  str_to_lower(species) |>
  group_by(island) |>
  summarize(mean(body_mass_g, na.rm = TRUE),
             mean(flipper_length_mm, na.rm = TRUE))

### A REPREX
library(stringr) #of tidy verse

library(tidyverse)
warpbreaks |>
  str_to_lower(wool)


library(reprex)

# Create a reprex copy code on clipboard and run
#reprex()

### FIXING A REPREX 

library(tidyverse)
library(dplyr)
library(reprex)
warpbreaks |>
  mutate( wool = str_to_lower(wool))


### A REPREX WITH A SYNTHESIZED DF 
library(tidyverse)
library(reprex)
animal <- c("DEER", "WOLF", "DUCK")
count <- c(43, 19, 60)
df <- data_frame(animal,count)

df |>
  mutate(animal = str_to_lower(animal))
