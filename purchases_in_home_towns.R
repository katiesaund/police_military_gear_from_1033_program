# Look at 1033 data for Washtenaw & Wayne counties in Michigan and San Mateo 
# County in California. 
# Just want to get a feel for how much equipment and what types of equipment
# were purchased in my "hometowns."

# Downloaded data from : https://data.world/d8amonk/1033-program-police-gear

library(tidyverse)

df <- read_csv("d8amonk-1033-program-police-gear/data/1033prog.csv")

# Washtenaw (Ann Arbor+), Michigan
washtenaw_df <- df %>% 
  filter(state == "MICHIGAN", 
         county == "WASHTENAW")
  
washtenaw_df %>% 
  ggplot(aes(x = item_name, y = total_cost)) +
  geom_bar(stat = "identity") + 
  theme_bw() + 
  xlab("Equipment") + 
  ylab("Cost") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 
ggsave("washtenaw_equipment.jpeg")

# Wayne (Detroit, Grosse Pointe, etc...), Michigan
wayne_df <- df %>% 
  filter(state == "MICHIGAN", 
         county == "WAYNE")
wayne_df %>% 
  filter(total_cost > 50000) %>% 
  ggplot(aes(x = item_name, y = total_cost)) +
  geom_bar(stat = "identity") + 
  theme_bw() + 
  xlab("Equipment") + 
  ylab("Cost") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 
ggsave("wayne_equipment_over_50000_dollars.jpeg")
# San Mateo County (San Carlos+), Michigan
san_mateo_df <- df %>% 
  filter(state == "CALIFORNIA", 
         county == "SAN MATEO")
san_mateo_df %>% 
  ggplot(aes(x = item_name, y = total_cost)) +
  geom_bar(stat = "identity") + 
  theme_bw() + 
  xlab("Equipment") + 
  ylab("Cost") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 
ggsave("san_mateo_equipment.jpeg")
