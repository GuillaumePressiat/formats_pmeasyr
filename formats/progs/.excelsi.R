f = 'SSRHA'
an = '16'
table = 'ssrha'
champ = 'ssr'

library(dplyr)
# SSR

rm(list = ls())
imp <- function(f, champ, table, an){
  #temp <- readxl::read_excel(paste0('C:/R projets/build_pmeasyr/pmeasyr_0.2/formats/excel/Formats ', f,' ',an, '.xlsx'))
  temp <- readxl::read_excel(paste0('~/Documents/R/pmeasyr_versions/pmeasyr_0.2/formats/excel/Formats ', f,' ',an, '.xlsx'))
  temp %>% mutate(champ = champ, table = table, an = an)
}

bind_rows(
  # SSRHA
  imp('SSRHA', 'ssr', 'ssrha', '11'),
  imp('SSRHA', 'ssr', 'ssrha', '12'),
  imp('SSRHA', 'ssr', 'ssrha', '13'),
  imp('SSRHA', 'ssr', 'ssrha', '14'),
  imp('SSRHA', 'ssr', 'ssrha', '15'),
  imp('SSRHA', 'ssr', 'ssrha', '16'),

  # RHA
  imp('RHA', 'ssr', 'rha', '11'),
  imp('RHA', 'ssr', 'rha', '12'),
  imp('RHA', 'ssr', 'rha', '13'),
  imp('RHA', 'ssr', 'rha', '14'),
  imp('RHA', 'ssr', 'rha', '15'),
  imp('RHA', 'ssr', 'rha', '16'),

  # RHA ANO
  imp('RHA ANO', 'ssr', 'rha_ano', '11'),
  imp('RHA ANO', 'ssr', 'rha_ano', '12'),
  imp('RHA ANO', 'ssr', 'rha_ano', '13'),
  imp('RHA ANO', 'ssr', 'rha_ano', '14'),
  imp('RHA ANO', 'ssr', 'rha_ano', '15'),
  imp('RHA ANO', 'ssr', 'rha_ano', '16'),

  # RAPSS
  imp('RAPSS', 'had', 'rapss', '11'),
  imp('RAPSS', 'had', 'rapss', '12'),
  imp('RAPSS', 'had', 'rapss', '13'),
  imp('RAPSS', 'had', 'rapss', '14'),
  imp('RAPSS', 'had', 'rapss', '15'),
  imp('RAPSS', 'had', 'rapss', '16'),

  # RAPSS ANO
  imp('RAPSS ANO', 'had', 'rapss_ano', '11'),
  imp('RAPSS ANO', 'had', 'rapss_ano', '12'),
  imp('RAPSS ANO', 'had', 'rapss_ano', '13'),
  imp('RAPSS ANO', 'had', 'rapss_ano', '14'),
  imp('RAPSS ANO', 'had', 'rapss_ano', '15'),
  imp('RAPSS ANO', 'had', 'rapss_ano', '16'),

  # RAPSS MED
  imp('RAPSS MED', 'had', 'rapss_med', '11'),
  imp('RAPSS MED', 'had', 'rapss_med', '12'),
  imp('RAPSS MED', 'had', 'rapss_med', '13'),
  imp('RAPSS MED', 'had', 'rapss_med', '14'),
  imp('RAPSS MED', 'had', 'rapss_med', '15'),
  imp('RAPSS MED', 'had', 'rapss_med', '16'),


  # RPSA
  imp('RPSA', 'psy', 'rpsa', '12'),
  imp('RPSA', 'psy', 'rpsa', '13'),
  imp('RPSA', 'psy', 'rpsa', '14'),
  imp('RPSA', 'psy', 'rpsa', '15'),
  imp('RPSA', 'psy', 'rpsa', '16'),

  # RPSA ANO
  imp('RPSA ANO', 'psy', 'rpsa_ano', '12'),
  imp('RPSA ANO', 'psy', 'rpsa_ano', '13'),
  imp('RPSA ANO', 'psy', 'rpsa_ano', '14'),
  imp('RPSA ANO', 'psy', 'rpsa_ano', '15'),
  imp('RPSA ANO', 'psy', 'rpsa_ano', '16'),

  # R3A
  imp('R3A', 'psy', 'r3a', '12'),
  imp('R3A', 'psy', 'r3a', '13'),
  imp('R3A', 'psy', 'r3a', '14'),
  imp('R3A', 'psy', 'r3a', '15'),
  imp('R3A', 'psy', 'r3a', '16'),

  # RSA
  imp('RSA', 'mco', 'rsa', '11'),
  imp('RSA', 'mco', 'rsa', '12'),
  imp('RSA', 'mco', 'rsa', '13'),
  imp('RSA', 'mco', 'rsa', '14'),
  imp('RSA', 'mco', 'rsa', '15'),
  imp('RSA', 'mco', 'rsa', '16'),

  # RSA ACTES
  imp('RSA ACTES', 'mco', 'rsa_actes', '11'),
  imp('RSA ACTES', 'mco', 'rsa_actes', '12'),
  imp('RSA ACTES', 'mco', 'rsa_actes', '13'),
  imp('RSA ACTES', 'mco', 'rsa_actes', '14'),
  imp('RSA ACTES', 'mco', 'rsa_actes', '15'),
  imp('RSA ACTES', 'mco', 'rsa_actes', '16'),

  # RSA UM
   imp('RSA UM', 'mco', 'rsa_um', '11'),
   imp('RSA UM', 'mco', 'rsa_um', '12'),
   imp('RSA UM', 'mco', 'rsa_um', '13'),
   imp('RSA UM', 'mco', 'rsa_um', '14'),
   imp('RSA UM', 'mco', 'rsa_um', '15'),
   imp('RSA UM', 'mco', 'rsa_um', '16'),

  # RSA ANO
  imp('RSA ANO', 'mco', 'rsa_ano', '11'),
  imp('RSA ANO', 'mco', 'rsa_ano', '12'),
  imp('RSA ANO', 'mco', 'rsa_ano', '13'),
  imp('RSA ANO', 'mco', 'rsa_ano', '14'),
  imp('RSA ANO', 'mco', 'rsa_ano', '15'),
  imp('RSA ANO', 'mco', 'rsa_ano', '16'),

  # RSA MED
  imp('RSA MED', 'mco', 'rsa_med', '11'),
  imp('RSA MED', 'mco', 'rsa_med', '12'),
  imp('RSA MED', 'mco', 'rsa_med', '13'),
  imp('RSA MED', 'mco', 'rsa_med', '14'),
  imp('RSA MED', 'mco', 'rsa_med', '15'),
  imp('RSA MED', 'mco', 'rsa_med', '16'),

  # RSA DMI
  imp('RSA DMI', 'mco', 'rsa_dmi', '11'),
  imp('RSA DMI', 'mco', 'rsa_dmi', '12'),
  imp('RSA DMI', 'mco', 'rsa_dmi', '13'),
  imp('RSA DMI', 'mco', 'rsa_dmi', '14'),
  imp('RSA DMI', 'mco', 'rsa_dmi', '15'),
  imp('RSA DMI', 'mco', 'rsa_dmi', '16'),

  # RSA DIAP
  imp('RSA DIAP', 'mco', 'rsa_diap', '11'),
  imp('RSA DIAP', 'mco', 'rsa_diap', '12'),
  imp('RSA DIAP', 'mco', 'rsa_diap', '13'),
  imp('RSA DIAP', 'mco', 'rsa_diap', '14'),
  imp('RSA DIAP', 'mco', 'rsa_diap', '15'),
  imp('RSA DIAP', 'mco', 'rsa_diap', '16'),

  # RSA PO
  imp('RSA PO', 'mco', 'rsa_po', '11'),
  imp('RSA PO', 'mco', 'rsa_po', '12'),
  imp('RSA PO', 'mco', 'rsa_po', '13'),
  imp('RSA PO', 'mco', 'rsa_po', '14'),
  imp('RSA PO', 'mco', 'rsa_po', '15'),
  imp('RSA PO', 'mco', 'rsa_po', '16'),

  # RUM
  imp('RUM', 'mco', 'rum', '11'),
  imp('RUM', 'mco', 'rum', '12'),
  imp('RUM', 'mco', 'rum', '13'),
  imp('RUM', 'mco', 'rum', '14'),
  imp('RUM', 'mco', 'rum', '15'),
  imp('RUM', 'mco', 'rum', '16'),

  # RUM
  imp('RUM ACTES', 'mco', 'rum_actes', '11'),
  imp('RUM ACTES', 'mco', 'rum_actes', '12'),
  imp('RUM ACTES', 'mco', 'rum_actes', '13'),
  imp('RUM ACTES', 'mco', 'rum_actes', '14'),
  imp('RUM ACTES', 'mco', 'rum_actes', '15_116'),
  imp('RUM ACTES', 'mco', 'rum_actes', '15_117'),
  imp('RUM ACTES', 'mco', 'rum_actes', '16'),

  # RUM ANO
  imp('RUM ANO', 'mco', 'rum_ano', '11'),
  imp('RUM ANO', 'mco', 'rum_ano', '12'),
  imp('RUM ANO', 'mco', 'rum_ano', '13'),
  imp('RUM ANO', 'mco', 'rum_ano', '14'),
  imp('RUM ANO', 'mco', 'rum_ano', '15'),
  imp('RUM ANO', 'mco', 'rum_ano', '16'),

  # RUM MED
  imp('RUM MED', 'mco', 'rum_med', '11'),
  imp('RUM MED', 'mco', 'rum_med', '12'),
  imp('RUM MED', 'mco', 'rum_med', '13'),
  imp('RUM MED', 'mco', 'rum_med', '14'),
  imp('RUM MED', 'mco', 'rum_med', '15'),
  imp('RUM MED', 'mco', 'rum_med', '16'),

  # RUM DMI
  imp('RUM DMI', 'mco', 'rum_dmi', '11'),
  imp('RUM DMI', 'mco', 'rum_dmi', '12'),
  imp('RUM DMI', 'mco', 'rum_dmi', '13'),
  imp('RUM DMI', 'mco', 'rum_dmi', '14'),
  imp('RUM DMI', 'mco', 'rum_dmi', '15'),
  imp('RUM DMI', 'mco', 'rum_dmi', '16'),

  # Fichcomp po
  imp('RUM FICHCOMP', 'mco', 'ffc_in', '11'),
  imp('RUM FICHCOMP', 'mco', 'ffc_in', '12'),
  imp('RUM FICHCOMP', 'mco', 'ffc_in', '13'),
  imp('RUM FICHCOMP', 'mco', 'ffc_in', '14'),
  imp('RUM FICHCOMP', 'mco', 'ffc_in', '15'),
  imp('RUM FICHCOMP', 'mco', 'ffc_in', '16'),

  # UM
  imp('UM', 'mco', 'um', '11'),
  imp('UM', 'mco', 'um', '12'),
  imp('UM', 'mco', 'um', '13'),
  imp('UM', 'mco', 'um', '14'),
  imp('UM', 'mco', 'um', '15'),
  imp('UM', 'mco', 'um', '16'),

  # TRA
  imp('TRA MCO', 'mco', 'tra', 'xx'),
  imp('TRA HAD', 'had', 'tra', 'xx'),
  imp('TRA SSR', 'ssr', 'tra', 'xx'),
  imp('TRA PSY_R3A', 'psy', 'tra_r3a', 'xx'),
  imp('TRA PSY_RPSA', 'psy', 'tra_rpsa', 'xx'),

  # RAFAEL
  imp('RAFAEL', 'rsf', 'rafael', '12'),
  imp('RAFAEL', 'rsf', 'rafael', '13'),
  imp('RAFAEL', 'rsf', 'rafael', '14'),
  imp('RAFAEL', 'rsf', 'rafael', '15'),
  #imp('RAFAEL', 'rsf', 'rafael', '16'),

  # RAFAEL ANO-ACE
  imp('RAFAEL ANO', 'rsf', 'rafael_ano', '12'),
  imp('RAFAEL ANO', 'rsf', 'rafael_ano', '13'),
  imp('RAFAEL ANO', 'rsf', 'rafael_ano', '14'),
  imp('RAFAEL ANO', 'rsf', 'rafael_ano', '15')
  #imp('RAFAEL ANO', 'rsf', 'rafael_ano', '16')

) %>% select(libelle, longueur, position, fin, type, nom, champ, table, an, cla, Typer) -> formats
#rg <- readxl::read_excel(paste0('C:/R projets/build_pmeasyr/pmeasyr_0.2/formats/regpexpr/rg_curseurs.xlsx'))
rg <- readxl::read_excel(paste0('~/Documents/R/pmeasyr_versions/pmeasyr_0.2/formats/regpexpr/rg_curseurs.xlsx'))
class(rg$an) <- "character"
#
dplyr::bind_rows(formats,rg) -> formats
rm(imp)
rm(rg)
#save.image("C:/R projets/build_pmeasyr/pmeasyr_0.2/formats/table_r/formats.RData")
save.image("~/Documents/R/pmeasyr_versions/pmeasyr_0.2/formats/table_r/formats.RData")


