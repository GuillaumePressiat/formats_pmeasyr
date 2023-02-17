

# reporter sur janvier février les formats de l'année en cours (avant mars)
library(dplyr, warn.conflicts = FALSE)
library(stringfix)


liste_fichiers_courant <- tibble(
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
  mutate(champ = stringr::str_remove(champ, " ")) %>% 
  filter(an == '22')

lf_in <- liste_fichiers_courant$path_fichier
lf_out <- lf_in %reall% c('22', '23')

dir.create('formats/excel/SSR/2023')
dir.create('formats/excel/MCO/2023')
dir.create('formats/excel/PSY/2023')
dir.create('formats/excel/RSF/2023')
dir.create('formats/excel/HAD/2023')

file.copy(from = lf_in, to = lf_out)

