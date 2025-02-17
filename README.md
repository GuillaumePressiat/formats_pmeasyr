# formats pmeasyr

Formats des fichiers in out pour pmeasyr


Ce projet contient les formats des fichiers PMSI pris en charge par *pmeasyr* en xlsx et le script R pour les intégrer à un .Rdata.

Le répertoire contient les manuels ATIH des versions M12 des logiciels Genrsa, Genrha, Paprica, Pivoine, Preface.

## formats pour pypmsi et pmsi_rust

Par extension, ce projet génère aussi un fichier json et un fichier parquet qui sont utilisés 
par les projets pypmsi et pmsi_rust / pmsi::io.

## Mettre à jour les formats

### pour janvier-février

#### Dupliquer l'année N-1

Le principe a minima pour le début d'année N (M01, ou M02) est de dupliquer les fichiers 
de formats de l'année N-1 en les renommant avec le nom de l'année N.

C'est ce que permet le programme R formats/progs/janvier_fevrier_3.R.

#### Ajouter les regexp de l'année N

Ouvrir le fichier excel formats/regpexpr/rg_curseurs.xlsx, copier les lignes de l'année N-1, 
les recopier en modifiant l'année N-1 par N.

#### Nouveautés ATIH

Vérifier les nouveautés des formats ATIH (lignes en jaune), et les intégrer dans les fichiers.

#### Regénérer le fichier formats.RData

Ouvrir le programme formats/progs/excelsi_2.R, le lancer.

### pour mars-décembre

Si l'étape "janvier-février" est faite, il s'agit ici de tenir compte des nouveautés de l'ATIH de noueau à M03,
de les intégrer dans les fichiers xlsx et ensuite de regénérer le .RData de nouveau.

Ce processus est donc un mélange d'actions automatiques et de vérifications manuelles.

