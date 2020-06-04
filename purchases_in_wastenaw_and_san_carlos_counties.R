# Look at 1033 data for Washtenaw & Wayne counties in Michigan and San Mateo 
# County in California. 
# Just want to get a feel for how much equipment and what types of equipment
# were purchased in my "hometowns."

# Downloaded data from : https://data.world/d8amonk/1033-program-police-gear

library(tidyverse)

df <- read_csv("~/Desktop/d8amonk-1033-program-police-gear/data/1033prog.csv")

# Washtenaw (Ann Arbor+), Michigan
washtenaw_df <- df %>% 
  filter(state == "MICHIGAN", 
         county == "WASHTENAW") %>% 
  ggplot() +
  geom_bar(mapping = aes(x = item_name, y = total_cost))


# Wayne (Detroit, Grosse Pointe, etc...), Michigan
wayne_df <- df %>% 
  filter(state == "MICHIGAN", 
         county == "WAYNE")
View(wayne_df)

# San Mateo County (San Carlos+), Michigan
san_mateo_df <- df %>% 
  filter(state == "CALIFORNIA", 
         county == "SAN MATEO")
View(san_mateo_df)
