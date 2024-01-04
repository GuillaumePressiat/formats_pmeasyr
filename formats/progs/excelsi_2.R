# f = 'SSRHA'
# an = '16'
# table = 'ssrha'
# champ = 'ssr'

library(dplyr, warn.conflicts = F)
# SSR

rm(list = ls())

liste_fichiers <- tibble(
  path_fichier = list.files('formats/excel', recursive = TRUE, pattern = "xlsx", full.names = TRUE),
  champan_fichier  = list.files('formats/excel', recursive = TRUE, pattern = "xlsx", full.names = FALSE)) %>% 
  mutate(court_fichier = basename(champan_fichier)) %>% 
  mutate(
    champ = stringr::str_replace(champan_fichier, '([A-Z]{3}).*', '\\1') %>% tolower,
    table = stringr::str_replace(court_fichier, 'Formats ([A-Z_3 ]+)?( [0-9x]{2}).*', '\\1') %>% tolower,
    an = stringr::str_replace(court_fichier, '.* ([0-9x]{2}.*).xlsx', '\\1'),
    table = stringr::str_replace_all(table, '\\s', '_')) %>% 
  mutate(table = case_when(
    table == "rum_fichcomp" ~ "ffc_in", 
    table == "rafael_lamda" ~ "rafael-maj",
    table == "rafael_lamda_ano" ~ "rafael_ano-maj",
    table == "tra_mco" ~ "tra",
    table == "tra_ssr" ~ "tra",
    table == "tra_had" ~ "tra",
    table == "tra_psy_r3a" ~ "psy_r3a",
    table == "tra_psy_rpsa" ~ "psy_rpsa",
    TRUE ~ table)) %>% 
  mutate(champ = stringr::str_remove(champ, " "))

# f <- liste_fichiers[1,]$path_fichier

lire_un_fichier <- function(f) {
  # print(f)
  u <- purrr::quietly(readxl::read_excel)(f)
    
  if (length(u$messages) > 0){
    print(f)
  }
  u$result
}

# pmeasyr::formats
# formats_pmeasyr %>% 
#   select(libelle, longueur, position, fin, type, nom, champ, table, an)

formats_pmeasyr <- liste_fichiers %>% 
  mutate(format = purrr::map(path_fichier, lire_un_fichier)) %>% 
  tidyr::unnest(cols = format, names_repair = "universal") %>% 
  select(libelle, longueur, position, fin, type, nom, champ, table, an, Typer, cla)

rg <- readxl::read_excel(paste0('formats/regpexpr/rg_curseurs.xlsx'))
class(rg$an) <- "character"
dplyr::bind_rows(formats_pmeasyr,rg) -> formats_pmeasyr

formats <- formats_pmeasyr

# reel_pmeasyr <- pmeasyr::formats

# pmeasyr::formats %>% 
#   left_join(formats_pmeasyr %>% mutate(ok = 1), by = c("champ", "table", "an", "nom")) -> comp

# formats_pmeasyr %>% 
#   left_join(reel_pmeasyr %>% mutate(ok = 1), by = c("champ", "table", "an", "nom", "Typer")) -> comp


# comp %>% count(ok)
# comp %>% #filter(champ == "mco") %>% 
#   filter(is.na(ok)) %>% 
#   View

# comp_s <- comp %>% add_count(champ, table, an, nom, Typer, sort = TRUE)

# rm(imp)
rm(rg)
# rm(u)
rm(liste_fichiers)
rm(formats_pmeasyr)
# rm(f)
rm(lire_un_fichier)

rm(.Random.seed)

save.image("formats/table_r/formats.RData")

jsonlite::write_json(formats %>% arrange(desc(z)), 'formats/json/pmeasyr_formats.json')
readr::write_csv(formats, 'formats/json/pmeasyr_formats.csv', na = "")

arrow::write_parquet(formats %>% 
                       mutate(longueur = as.integer(longueur),
                              position = as.integer(position),
                              fin = as.integer(position),
                              curseur = as.integer(curseur)), 'formats/json/pmeasyr_formats.parquet')


