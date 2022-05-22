library(tidyverse)
library(kableExtra)
library(knitr)

#datos que voyA utilizar
plants <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/plants.csv")
actions <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/actions.csv")
threats <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/threats.csv")

##al usar filter lo que hare es quedarme solo con las filas de la base de datos plants que en la variable continent tengan south america
plants %>% dplyr::filter(continent=="South America") %>% nrow()

#kable: generara una tabla que es igual a dataframe ingresado
#kableExtra : mejorara la tabla anterior que haga kable

data("msleep")
Tabla <- msleep %>% group_by(vore) %>% summarise_at("sleep_total", .funs = list(Mean = mean, SD = sd)) %>% 
  dplyr::filter(!is.na(vore)) %>% arrange(desc(Mean))

#el comando dplyr::filter(!is.na(vore)) , me permite que yo filtre y mi summarise haga la tabla sin tomar en cuenta los datos NA de la variable vore
#el comando arrange(desc(Mean)) quiere decir que: el arrange()es para ordenar y el desc() quiere decir que ordena decendientemente y el mean que el orden este con respecto a la media