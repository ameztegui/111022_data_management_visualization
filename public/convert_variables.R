library(tidyverse)
library(lubridate)

load("~/Software/Data_Management_Visualization/static/labs/data/data_IFN.rdata")


coordinates <- coordinates %>%
    rename(Code = Codi,
           Province = Provincia,
           Plot = Estadillo,
           Class = Cla)

leaf <- leaf %>%
    rename(Code = Codi)

plots <- plots %>%
    rename(Code = Codi,
           Province = Provincia,
           Class = Cla,
           Subclass = Subclase,
           DateIni = FechaIni,
           TimeIni = HoraIni,
           DateFin = FechaFin,
           TimeFin = HoraFin,
           Rocos = Rocosid,
           Texture = Textura,
           SoilPh = PhSuelo,
           DatePh = FechaPh,
           Dom_sp_IFN2 = Dom_sp2,
           Dom_sp_IFN3 = Dom_sp3)

date(plots$TimeIni) <- date(plots$DateIni)
date(plots$TimeFin) <- date(plots$DateFin)

prov_names <- prov_names %>%
    rename(Province = Provincia)

species <- species %>%
    rename(Code = Codi,
           Species = Especie)

trees <- trees %>%
    rename(Code = Codi,
           Province = Provincia,
           Species = Especie,
           Course = Rumbo,
           Diam_IFN2 = DiamIf2,
           Diam_IFN3 = DiamIf3,
           Height_IFN3 = HeiIf3)

save(coordinates, leaf, plots, prov_names, species, sps_codes, trees,
     file = "~/Software/Data_Management_Visualization/static/labs/data/newdata_IFN.rdata")
