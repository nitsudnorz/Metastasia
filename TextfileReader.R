setwd("/Users/zorn/Documents/Metastasie")

####engine1

###Presets

#e1_evolch1_preset <- read.csv("e1_evolch1_preset.txt", header = FALSE, sep = " ")
#synth param
e1_iamp_preset <- read.csv("e1_iamp_preset.txt", header = FALSE, sep = " ")
e1_idifa_preset <- read.csv("e1_idifa_preset.txt", header = FALSE, sep = " ")
e1_idifb_preset <- read.csv("e1_idifb_preset.txt", header = FALSE, sep = " ")
e1_ifc_preset <- read.csv("e1_ifc_preset.txt", header = FALSE, sep = " ")
e1_ifma_preset <- read.csv("e1_ifma_preset.txt", header = FALSE, sep = " ")
e1_ifmb_preset <- read.csv("e1_ifmb_preset.txt", header = FALSE, sep = " ")
e1_imag_preset <- read.csv("e1_imag_preset.txt", header = FALSE, sep = " ")
e1_indxa_preset <- read.csv("e1_indxa_preset.txt", header = FALSE, sep = " ")
e1_indxb_preset <- read.csv("e1_indxb_preset.txt", header = FALSE, sep = " ")
e1_isk_preset <- read.csv("e1_isk_preset.txt", header = FALSE, sep = " ")
e1_kndx_preset <- read.csv("e1_kndx_preset.txt", header = FALSE, sep = " ")
#tables
e1_ifn1_preset <- read.csv("e1_evolch1_preset.txt", header = FALSE, sep = " ")
e1_ifn2_preset <- read.csv("e1_evolch1_preset.txt", header = FALSE, sep = " ")
e1_ifn3_preset <- read.csv("e1_evolch1_preset.txt", header = FALSE, sep = " ")
e1_ifn4_preset <- read.csv("e1_evolch1_preset.txt", header = FALSE, sep = " ")

#reverb
e1_rev_preset <- read.csv("e1_rev_preset.txt", header = FALSE, sep = " ")
e1_idis_preset  <- read.csv("e1_evolch1_preset.txt", header = FALSE, sep = " ")
e1_arevsc_preset  <- read.csv("e1_arevsc_preset.txt", header = FALSE, sep = " ")
e1_ch1_preset  <- read.csv("e1_ch1_preset.txt", header = FALSE, sep = " ")
e1_ch2_preset  <- read.csv("e1_ch2_preset.txt", header = FALSE, sep = " ")
e1_ch3_preset  <- read.csv("e1_ch2_preset.txt", header = FALSE, sep = " ")
e1_ch4_preset  <- read.csv("e1_ch3_preset.txt", header = FALSE, sep = " ")
#mastervol
e1_evolch1_preset  <- read.csv("e1_evolch1_preset.txt", header = FALSE, sep = " ")
e1_evolch2_preset  <- read.csv("e1_evolch2_preset.txt", header = FALSE, sep = " ")
e1_evolch3_preset  <- read.csv("e1_evolch3_preset.txt", header = FALSE, sep = " ")
e1_evolch4_preset  <- read.csv("e1_evolch4_preset.txt", header = FALSE, sep = " ")
#interpol
e1_interpolmain_preset<- read.csv("e1_interpolmain_preset.txt", header = FALSE, sep = " ")
e1_interpolmoda_preset<- read.csv("e1_interpolmoda_preset.txt", header = FALSE, sep = " ")
e1_interpolmodb_preset<- read.csv("e1_interpolmodb_preset.txt", header = FALSE, sep = " ")
e1_osctabmain_preset<- read.csv("e1_osctabmain_preset.txt", header = FALSE, sep = " ")
e1_osctabmoda_preset<- read.csv("e1_osctabmoda_preset.txt", header = FALSE, sep = " ")
e1_osctabmodb_preset<- read.csv("e1_osctabmodb_preset.txt", header = FALSE, sep = " ")

####engine2

#reverb
e2_idis_preset<- read.csv("e2_idis_preset.txt", header = FALSE, sep = " ")
e2_rev_preset<- read.csv("e2_rev_preset.txt", header = FALSE, sep = " ")
e2_arevsc_preset<- read.csv("e2_arevsc_preset.txt", header = FALSE, sep = " ")
e2_ch1_preset<- read.csv("e2_ch1_preset.txt", header = FALSE, sep = " ")
e2_ch2_preset<- read.csv("e2_ch2_preset.txt", header = FALSE, sep = " ")
e2_ch3_preset<- read.csv("e2_ch3_preset.txt", header = FALSE, sep = " ")
e2_ch4_preset<- read.csv("e2_ch4_preset.txt", header = FALSE, sep = " ")
#mastervol
e2_evolch1_preset<- read.csv("e2_evolch1_preset.txt", header = FALSE, sep = " ")
e2_evolch2_preset<- read.csv("e2_evolch2_preset.txt", header = FALSE, sep = " ")
e2_evolch3_preset<- read.csv("e2_evolch3_preset.txt", header = FALSE, sep = " ")
e2_evolch4_preset<- read.csv("e2_evolch4_preset.txt", header = FALSE, sep = " ")

#V1
#synth
e2v1_iamp_preset<- read.csv("e2v1_iamp_preset.txt", header = FALSE, sep = " ")
e2v1_idifa_preset<- read.csv("e2v1_idifa_preset.txt", header = FALSE, sep = " ")
e2v1_idifb_preset<- read.csv("e2v1_idifb_preset.txt", header = FALSE, sep = " ")
e2v1_ifc_preset<- read.csv("e2v1_ifc_preset.txt", header = FALSE, sep = " ")
e2v1_ifma_preset<- read.csv("e2v1_ifma_preset.txt", header = FALSE, sep = " ")
e2v1_ifmb_preset<- read.csv("e2v1_ifmb_preset.txt", header = FALSE, sep = " ")
e2v1_isk_preset<- read.csv("e2v1_isk_preset.txt", header = FALSE, sep = " ")
e2v1_kndx_preset<- read.csv("e2v1_kndx_preset.txt", header = FALSE, sep = " ")
e2v1_imag_preset<- read.csv("e2v1_imag_preset.txt", header = FALSE, sep = " ")
e2v1_indxa_preset<- read.csv("e2v1_indxa_preset.txt", header = FALSE, sep = " ")
e2v1_indxb_preset<- read.csv("e2v1_indxb_preset.txt", header = FALSE, sep = " ")
#tables
e2v1_ifn1_preset<- read.csv("e2v1_ifn1_preset.txt", header = FALSE, sep = " ")
e2v1_ifn2_preset<- read.csv("e2v1_ifn2_preset.txt", header = FALSE, sep = " ")
e2v1_ifn3_preset<- read.csv("e2v1_ifn3_preset.txt", header = FALSE, sep = " ")
e2v1_ifn4_preset<- read.csv("e2v1_ifn4_preset.txt", header = FALSE, sep = " ")


#interpol
e2v1_interpolkndx_preset<- read.csv("e2v1_interpolkndx_preset.txt", header = FALSE, sep = " ")
e2v1_interpolmain_preset<- read.csv("e2v1_interpolmain_preset.txt", header = FALSE, sep = " ")
e2v1_interpolmoda_preset<- read.csv("e2v1_interpolmoda_preset.txt", header = FALSE, sep = " ")
e2v1_interpolmodb_preset<- read.csv("e2v1_interpolmodb_preset.txt", header = FALSE, sep = " ")
e2v1_osctabkndx_preset<- read.csv("e2v1_osctabkndx_preset.txt", header = FALSE, sep = " ")
e2v1_osctabmain_preset<- read.csv("e2v1_osctabmain_preset.txt", header = FALSE, sep = " ")
e2v1_osctabmoda_preset<- read.csv("e2v1_osctabmoda_preset.txt", header = FALSE, sep = " ")
e2v1_osctabmodb_preset<- read.csv("e2v1_osctabmodb_preset.txt", header = FALSE, sep = " ")

#V2
#synth
e2v2_iamp_preset<- read.csv("e2v2_iamp_preset.txt", header = FALSE, sep = " ")
e2v2_idifa_preset<- read.csv("e2v2_idifa_preset.txt", header = FALSE, sep = " ")
e2v2_idifb_preset<- read.csv("e2v2_idifb_preset.txt", header = FALSE, sep = " ")
e2v2_ifc_preset<- read.csv("e2v2_ifc_preset.txt", header = FALSE, sep = " ")
e2v2_ifma_preset<- read.csv("e2v2_ifma_preset.txt", header = FALSE, sep = " ")
e2v2_ifmb_preset<- read.csv("e2v2_ifmb_preset.txt", header = FALSE, sep = " ")
e2v2_imag_preset<- read.csv("e2v2_imag_preset.txt", header = FALSE, sep = " ")
e2v2_indxa_preset<- read.csv("e2v2_indxa_preset.txt", header = FALSE, sep = " ")
e2v2_indxb_preset<- read.csv("e2v2_indxb_preset.txt", header = FALSE, sep = " ")
e2v2_isk_preset<- read.csv("e2v2_isk_preset.txt", header = FALSE, sep = " ")
e2v2_kndx_preset<- read.csv("e2v2_kndx_preset.txt", header = FALSE, sep = " ")
#tables
e2v2_ifn1_preset<- read.csv("e2v2_ifn1_preset.txt", header = FALSE, sep = " ")
e2v2_ifn2_preset<- read.csv("e2v2_ifn2_preset.txt", header = FALSE, sep = " ")
e2v2_ifn3_preset<- read.csv("e2v2_ifn3_preset.txt", header = FALSE, sep = " ")
e2v2_ifn4_preset<- read.csv("e2v2_ifn4_preset.txt", header = FALSE, sep = " ")
#interpol
e2v2_interpolkndx_preset<- read.csv("e2v2_interpolkndx_preset.txt", header = FALSE, sep = " ")
e2v2_interpolmain_preset<- read.csv("e2v2_interpolmain_preset.txt", header = FALSE, sep = " ")
e2v2_interpolmoda_preset<- read.csv("e2v2_interpolmoda_preset.txt", header = FALSE, sep = " ")
e2v2_interpolmodb_preset<- read.csv("e2v2_interpolmodb_preset.txt", header = FALSE, sep = " ")
e2v2_osctabkndx_preset<- read.csv("e2v2_osctabkndx_preset.txt", header = FALSE, sep = " ")
e2v2_osctabmain_preset<- read.csv("e2v2_osctabmain_preset.txt", header = FALSE, sep = " ")
e2v2_osctabmoda_preset<- read.csv("e2v2_osctabmoda_preset.txt", header = FALSE, sep = " ")
e2v2_osctabmodb_preset<- read.csv("e2v2_osctabmodb_preset.txt", header = FALSE, sep = " ")


####engine3

#reverb
e3_idis_preset<- read.csv("e3_idis_preset.txt", header = FALSE, sep = " ")
e3_rev_preset<- read.csv("e3_rev_preset.txt", header = FALSE, sep = " ")
e3_arevsc_preset<- read.csv("e3_arevsc_preset.txt", header = FALSE, sep = " ")
e3_ch1_preset<- read.csv("e3_ch1_preset.txt", header = FALSE, sep = " ")
e3_ch2_preset<- read.csv("e3_ch2_preset.txt", header = FALSE, sep = " ")
e3_ch3_preset<- read.csv("e3_ch3_preset.txt", header = FALSE, sep = " ")
e3_ch4_preset<- read.csv("e3_ch4_preset.txt", header = FALSE, sep = " ")
#mastervol
e3_evolch1_preset<- read.csv("e3_evolch1_preset.txt", header = FALSE, sep = " ")
e3_evolch2_preset<- read.csv("e3_evolch2_preset.txt", header = FALSE, sep = " ")
e3_evolch3_preset<- read.csv("e3_evolch3_preset.txt", header = FALSE, sep = " ")
e3_evolch4_preset<- read.csv("e3_evolch4_preset.txt", header = FALSE, sep = " ")
#synth
e3_iamp_preset<- read.csv("e3_iamp_preset.txt", header = FALSE, sep = " ")
e3_idifa_preset<- read.csv("e3_idifa_preset.txt", header = FALSE, sep = " ")
e3_idifb_preset<- read.csv("e3_idifb_preset.txt", header = FALSE, sep = " ")
e3_ifc_preset<- read.csv("e3_ifc_preset.txt", header = FALSE, sep = " ")
e3_ifma_preset<- read.csv("e3_ifma_preset.txt", header = FALSE, sep = " ")
e3_ifmb_preset<- read.csv("e3_ifmb_preset.txt", header = FALSE, sep = " ")
e3_imag_preset<- read.csv("e3_imag_preset.txt", header = FALSE, sep = " ")
e3_indxa_preset<- read.csv("e3_indxa_preset.txt", header = FALSE, sep = " ")
e3_indxb_preset<- read.csv("e3_indxb_preset.txt", header = FALSE, sep = " ")
e3_isk_preset<- read.csv("e3_isk_preset.txt", header = FALSE, sep = " ")
e3_kndx_preset<- read.csv("e3_kndx_preset.txt", header = FALSE, sep = " ")

#tables
e3_ifn1_preset<- read.csv("e3_ifn1_preset.txt", header = FALSE, sep = " ")
e3_ifn2_preset<- read.csv("e3_ifn2_preset.txt", header = FALSE, sep = " ")
e3_ifn3_preset<- read.csv("e3_ifn3_preset.txt", header = FALSE, sep = " ")
e3_ifn4_preset<- read.csv("e3_ifn4_preset.txt", header = FALSE, sep = " ")

#interpol
e3_interpolmain_preset<- read.csv("e3_interpolmain_preset.txt", header = FALSE, sep = " ")
e3_interpolmoda_preset<- read.csv("e3_interpolmoda_preset.txt", header = FALSE, sep = " ")
e3_interpolmodb_preset<- read.csv("e3_interpolmodb_preset.txt", header = FALSE, sep = " ")
e3_kndxinterpol_preset<- read.csv("e3_kndxinterpol_preset.txt", header = FALSE, sep = " ")
e3_kndxosctab_preset<- read.csv("e3_kndxosctab_preset.txt", header = FALSE, sep = " ")
e3_osctabmain_preset<- read.csv("e3_osctabmain_preset.txt", header = FALSE, sep = " ")
e3_osctabmoda_preset<- read.csv("e3_osctabmoda_preset.txt", header = FALSE, sep = " ")
e3_osctabmodb_preset<- read.csv("e3_osctabmodb_preset.txt", header = FALSE, sep = " ")


####engine4

#reverb
e4_idis_preset<- read.csv("e4_idis_preset.txt", header = FALSE, sep = " ")
e4_rev_preset<- read.csv("e1_evolch4_preset.txt", header = FALSE, sep = " ")
e4_arevsc_preset<- read.csv("e4_rev_preset.txt", header = FALSE, sep = " ")
e4_ch1_preset<- read.csv("e4_ch1_preset.txt", header = FALSE, sep = " ")
e4_ch2_preset<- read.csv("e4_ch2_preset.txt", header = FALSE, sep = " ")
e4_ch3_preset<- read.csv("e4_ch3_preset.txt", header = FALSE, sep = " ")
e4_ch4_preset<- read.csv("e4_ch4_preset.txt", header = FALSE, sep = " ")

e4_env_preset<- read.csv("e4_env_preset.txt", header = FALSE, sep = " ")
e4_envinterpol_preset<- read.csv("e4_envinterpol_preset.txt", header = FALSE, sep = " ")
e4_envosctab_preset<- read.csv("e4_envosctab_preset.txt", header = FALSE, sep = " ")
#mastervol
e4_evolch1_preset<- read.csv("e4_evolch1_preset.txt", header = FALSE, sep = " ")
e4_evolch2_preset<- read.csv("e4_evolch2_preset.txt", header = FALSE, sep = " ")
e4_evolch3_preset<- read.csv("e4_evolch3_preset.txt", header = FALSE, sep = " ")
e4_evolch4_preset<- read.csv("e4_evolch4_preset.txt", header = FALSE, sep = " ")
#synth
e4_iamp_preset<- read.csv("e4_iamp_preset.txt", header = FALSE, sep = " ")
e4_idifa_preset<- read.csv("e4_idifa_preset.txt", header = FALSE, sep = " ")
e4_idifb_preset<- read.csv("e4_idifb_preset.txt", header = FALSE, sep = " ")
e4_ifc_preset<- read.csv("e4_ifc_preset.txt", header = FALSE, sep = " ")
e4_ifma_preset<- read.csv("e4_ifma_preset.txt", header = FALSE, sep = " ")
e4_ifmb_preset<- read.csv("e4_ifmb_preset.txt", header = FALSE, sep = " ")
e4_skew_preset<- read.csv("e4_skew_preset.txt", header = FALSE, sep = " ")
e4_isk_preset<- read.csv("e4_isk_preset.txt", header = FALSE, sep = " ")
e4_imag_preset<- read.csv("e4_imag_preset.txt", header = FALSE, sep = " ")
e4_indxa_preset<- read.csv("e4_indxa_preset.txt", header = FALSE, sep = " ")
e4_indxb_preset<- read.csv("e4_indxb_preset.txt", header = FALSE, sep = " ")

#tables
e4_ifn1_preset<- read.csv("e4_ifn1_preset.txt", header = FALSE, sep = " ")
e4_ifn2_preset<- read.csv("e4_ifn2_preset.txt", header = FALSE, sep = " ")
e4_ifn3_preset<- read.csv("e4_ifn3_preset.txt", header = FALSE, sep = " ")
e4_ifn4_preset<- read.csv("e4_ifn4_preset.txt", header = FALSE, sep = " ")

#interpol
e4_interpolmain_preset<- read.csv("e4_interpolmain_preset.txt", header = FALSE, sep = " ")
e4_interpolmoda_preset<- read.csv("e4_interpolmoda_preset.txt", header = FALSE, sep = " ")
e4_interpolmodb_preset<- read.csv("e4_interpolmodb_preset.txt", header = FALSE, sep = " ")
e4_moda_preset<- read.csv("e4_moda_preset.txt", header = FALSE, sep = " ")
e4_modainterpol_preset<- read.csv("e4_modainterpol_preset.txt", header = FALSE, sep = " ")
e4_modaosctab_preset<- read.csv("e4_modaosctab_preset.txt", header = FALSE, sep = " ")
e4_modb_preset<- read.csv("e4_modb_preset.txt", header = FALSE, sep = " ")
e4_modbinterpol_preset<- read.csv("e4_modbinterpol_preset.txt", header = FALSE, sep = " ")
e4_modbosctab_preset<- read.csv("e4_modbosctab_preset.txt", header = FALSE, sep = " ")
e4_osctabmain_preset<- read.csv("e4_osctabmain_preset.txt", header = FALSE, sep = " ")
e4_osctabmoda_preset<- read.csv("e4_osctabmoda_preset.txt", header = FALSE, sep = " ")
e4_osctabmodb_preset<- read.csv("e4_osctabmodb_preset.txt", header = FALSE, sep = " ")
e4_skewinterpol_preset<- read.csv("e4_skewinterpol_preset.txt", header = FALSE, sep = " ")
e4_skewosctab_preset<- read.csv("e4_skewosctab_preset.txt", header = FALSE, sep = " ")

####engine5

#reverb
e5_idis_preset<- read.csv("e5_idis_preset.txt", header = FALSE, sep = " ")
e5_rev_preset<- read.csv("e5_rev_preset.txt", header = FALSE, sep = " ")
e5_arevsc_preset<- read.csv("e5_arevsc_preset.txt", header = FALSE, sep = " ")
e5_ch1_preset<- read.csv("e5_ch1_preset.txt", header = FALSE, sep = " ")
e5_ch2_preset<- read.csv("e5_ch2_preset.txt", header = FALSE, sep = " ")
e5_ch3_preset<- read.csv("e5_ch3_preset.txt", header = FALSE, sep = " ")
e5_ch4_preset<- read.csv("e5_ch4_preset.txt", header = FALSE, sep = " ")
#mastervol
e5_evolch1_preset<- read.csv("e5_evolch1_preset.txt", header = FALSE, sep = " ")
e5_evolch2_preset<- read.csv("e5_evolch2_preset.txt", header = FALSE, sep = " ")
e5_evolch3_preset<- read.csv("e5_evolch3_preset.txt", header = FALSE, sep = " ")
e5_evolch4_preset<- read.csv("e5_evolch4_preset.txt", header = FALSE, sep = " ")
 #synth                           
e5_iamp_preset<- read.csv("e5_iamp_preset.txt", header = FALSE, sep = " ")
e5_idifa_preset<- read.csv("e5_idifa_preset.txt", header = FALSE, sep = " ")
e5_idifb_preset<- read.csv("e5_idifb_preset.txt", header = FALSE, sep = " ")
e5_ifc_preset<- read.csv("e5_ifc_preset.txt", header = FALSE, sep = " ")
e5_ifma_preset<- read.csv("e5_ifma_preset.txt", header = FALSE, sep = " ")
e5_ifmb_preset<- read.csv("e5_ifmb_preset.txt", header = FALSE, sep = " ")
e5_isk_preset<- read.csv("e5_isk_preset.txt", header = FALSE, sep = " ")
e5_kndx_preset<- read.csv("e5_kndx_preset.txt", header = FALSE, sep = " ")
e5_imag_preset<- read.csv("e5_imag_preset.txt", header = FALSE, sep = " ")
e5_indxa_preset<- read.csv("e5_indxa_preset.txt", header = FALSE, sep = " ")
e5_indxb_preset<- read.csv("e5_indxb_preset.txt", header = FALSE, sep = " ")
#tables
e5_ifn1_preset<- read.csv("e5_ifn1_preset.txt", header = FALSE, sep = " ")
e5_ifn2_preset<- read.csv("e5_ifn2_preset.txt", header = FALSE, sep = " ")
e5_ifn3_preset<- read.csv("e5_ifn3_preset.txt", header = FALSE, sep = " ")
e5_ifn4_preset<- read.csv("e5_ifn4_preset.txt", header = FALSE, sep = " ")

#interpol
e5_interpolmain_preset<- read.csv("e5_interpolmain_preset.txt", header = FALSE, sep = " ")
e5_interpolmoda_preset<- read.csv("e5_interpolmoda_preset.txt", header = FALSE, sep = " ")
e5_interpolmodb_preset<- read.csv("e5_interpolmodb_preset.txt", header = FALSE, sep = " ")
e5_osctabmain_preset<- read.csv("e5_osctabmain_preset.txt", header = FALSE, sep = " ")
e5_osctabmoda_preset<- read.csv("e5_osctabmoda_preset.txt", header = FALSE, sep = " ")
e5_osctabmodb_preset<- read.csv("e5_osctabmodb_preset.txt", header = FALSE, sep = " ")






#synth param
e1_iamp_preset
e1_idifa_preset
e1_idifb_preset
e1_ifc_preset
e1_ifma_preset
e1_ifmb_preset
e1_imag_preset
e1_indxa_preset
e1_indxb_preset
e1_isk_preset
e1_kndx_preset
#tables
e1_ifn1_preset
e1_ifn2_preset
e1_ifn3_preset
e1_ifn4_preset

#reverb
e1_rev_preset
e1_idis_preset
e1_arevsc_preset
e1_ch1_preset
e1_ch2_preset
e1_ch3_preset
e1_ch4_preset
#mastervol
e1_evolch1_preset
e1_evolch2_preset
e1_evolch3_preset
e1_evolch4_preset




e2_arevsc_preset
e2_ch1_preset
e2_ch2_preset
e2_ch3_preset
e2_ch4_preset
e2_evolch1_preset
e2_evolch2_preset
e2_evolch3_preset
e2_evolch4_preset
e2_idis_preset
e2_rev_preset
e2v1_iamp_preset
e2v1_idifa_preset
e2v1_idifb_preset
e2v1_ifc_preset
e2v1_ifma_preset
e2v1_ifmb_preset
e2v1_ifn1_preset
e2v1_ifn2_preset
e2v1_ifn3_preset
e2v1_ifn4_preset
e2v1_imag_preset
e2v1_indxa_preset
e2v1_indxb_preset
e2v1_interpolkndx_preset
e2v1_interpolmain_preset
e2v1_interpolmoda_preset
e2v1_interpolmodb_preset
e2v1_isk_preset
e2v1_kndx_preset
e2v1_osctabkndx_preset
e2v1_osctabmain_preset
e2v1_osctabmoda_preset
e2v1_osctabmodb_preset
e2v2_iamp_preset
e2v2_idifa_preset
e2v2_idifb_preset
e2v2_ifc_preset
e2v2_ifma_preset
e2v2_ifmb_preset
e2v2_ifn1_preset
e2v2_ifn2_preset
e2v2_ifn3_preset
e2v2_ifn4_preset
e2v2_imag_preset
e2v2_indxa_preset
e2v2_indxb_preset
e2v2_interpolkndx_preset
e2v2_interpolmain_preset
e2v2_interpolmoda_preset
e2v2_interpolmodb_preset
e2v2_isk_preset
e2v2_kndx_preset
e2v2_osctabkndx_preset
e2v2_osctabmain_preset
e2v2_osctabmoda_preset
e2v2_osctabmodb_preset
e3_arevsc_preset
e3_ch1_preset
e3_ch2_preset
e3_ch3_preset
e3_ch4_preset
e3_evolch1_preset
e3_evolch2_preset
e3_evolch3_preset
e3_evolch4_preset
e3_iamp_preset
e3_idifa_preset
e3_idifb_preset
e3_idis_preset
e3_ifc_preset
e3_ifma_preset
e3_ifmb_preset
e3_ifn1_preset
e3_ifn2_preset
e3_ifn3_preset
e3_ifn4_preset
e3_imag_preset
e3_indxa_preset
e3_indxb_preset
e3_interpolmain_preset
e3_interpolmoda_preset
e3_interpolmodb_preset
e3_isk_preset
e3_kndx_preset
e3_kndxinterpol_preset
e3_kndxosctab_preset
e3_osctabmain_preset
e3_osctabmoda_preset
e3_osctabmodb_preset
e3_rev_preset
e4_arevsc_preset
e4_ch1_preset
e4_ch2_preset
e4_ch3_preset
e4_ch4_preset
e4_env_preset
e4_envinterpol_preset
e4_envosctab_preset
e4_evolch1_preset
e4_evolch2_preset
e4_evolch3_preset
e4_evolch4_preset
e4_iamp_preset
e4_idifa_preset
e4_idifb_preset
e4_idis_preset
e4_ifc_preset
e4_ifma_preset
e4_ifmb_preset
e4_ifn1_preset
e4_ifn2_preset
e4_ifn3_preset
e4_ifn4_preset
e4_imag_preset
e4_indxa_preset
e4_indxb_preset
e4_interpolmain_preset
e4_interpolmoda_preset
e4_interpolmodb_preset
e4_isk_preset
e4_moda_preset
e4_modainterpol_preset
e4_modaosctab_preset
e4_modb_preset
e4_modbinterpol_preset
e4_modbosctab_preset
e4_osctabmain_preset
e4_osctabmoda_preset
e4_osctabmodb_preset
e4_rev_preset
e4_skew_preset
e4_skewinterpol_preset
e4_skewosctab_preset
e5_arevsc_preset
e5_ch1_preset
e5_ch2_preset
e5_ch3_preset
e5_ch4_preset
e5_evolch1_preset
e5_evolch2_preset
e5_evolch3_preset
e5_evolch4_preset
e5_iamp_preset
e5_idifa_preset
e5_idifb_preset
e5_idis_preset
e5_ifc_preset
e5_ifma_preset
e5_ifmb_preset
e5_ifn1_preset
e5_ifn2_preset
e5_ifn3_preset
e5_ifn4_preset
e5_imag_preset
e5_indxa_preset
e5_indxb_preset
e5_interpolmain_preset
e5_interpolmoda_preset
e5_interpolmodb_preset
e5_isk_preset
e5_kndx_preset
e5_osctabmain_preset
e5_osctabmoda_preset
e5_osctabmodb_preset
e5_rev_preset

#####scalingjstk

#e1_evolch1_scalingjstk <- read.csv("e1_evolch1_scalingjstk.txt", header = FALSE, sep = " ")
#synth param
e1_iamp_scalingjstk <- read.csv("e1_iamp_scalingjstk.txt", header = FALSE, sep = " ")
e1_idifa_scalingjstk <- read.csv("e1_idifa_scalingjstk.txt", header = FALSE, sep = " ")
e1_idifb_scalingjstk <- read.csv("e1_idifb_scalingjstk.txt", header = FALSE, sep = " ")
e1_ifc_scalingjstk <- read.csv("e1_ifc_scalingjstk.txt", header = FALSE, sep = " ")
e1_ifma_scalingjstk <- read.csv("e1_ifma_scalingjstk.txt", header = FALSE, sep = " ")
e1_ifmb_scalingjstk <- read.csv("e1_ifmb_scalingjstk.txt", header = FALSE, sep = " ")
e1_imag_scalingjstk <- read.csv("e1_imag_scalingjstk.txt", header = FALSE, sep = " ")
e1_indxa_scalingjstk <- read.csv("e1_indxa_scalingjstk.txt", header = FALSE, sep = " ")
e1_indxb_scalingjstk <- read.csv("e1_indxb_scalingjstk.txt", header = FALSE, sep = " ")
e1_isk_scalingjstk <- read.csv("e1_isk_scalingjstk.txt", header = FALSE, sep = " ")
e1_kndx_scalingjstk <- read.csv("e1_kndx_scalingjstk.txt", header = FALSE, sep = " ")
#tables
e1_ifn1_scalingjstk <- read.csv("e1_evolch1_scalingjstk.txt", header = FALSE, sep = " ")
e1_ifn2_scalingjstk <- read.csv("e1_evolch1_scalingjstk.txt", header = FALSE, sep = " ")
e1_ifn3_scalingjstk <- read.csv("e1_evolch1_scalingjstk.txt", header = FALSE, sep = " ")
e1_ifn4_scalingjstk <- read.csv("e1_evolch1_scalingjstk.txt", header = FALSE, sep = " ")

#reverb
e1_rev_scalingjstk <- read.csv("e1_rev_scalingjstk.txt", header = FALSE, sep = " ")
e1_idis_scalingjstk  <- read.csv("e1_evolch1_scalingjstk.txt", header = FALSE, sep = " ")
e1_arevsc_scalingjstk  <- read.csv("e1_arevsc_scalingjstk.txt", header = FALSE, sep = " ")
e1_ch1_scalingjstk  <- read.csv("e1_ch1_scalingjstk.txt", header = FALSE, sep = " ")
e1_ch2_scalingjstk  <- read.csv("e1_ch2_scalingjstk.txt", header = FALSE, sep = " ")
e1_ch3_scalingjstk  <- read.csv("e1_ch2_scalingjstk.txt", header = FALSE, sep = " ")
e1_ch4_scalingjstk  <- read.csv("e1_ch3_scalingjstk.txt", header = FALSE, sep = " ")
#mastervol
e1_evolch1_scalingjstk  <- read.csv("e1_evolch1_scalingjstk.txt", header = FALSE, sep = " ")
e1_evolch2_scalingjstk  <- read.csv("e1_evolch2_scalingjstk.txt", header = FALSE, sep = " ")
e1_evolch3_scalingjstk  <- read.csv("e1_evolch3_scalingjstk.txt", header = FALSE, sep = " ")
e1_evolch4_scalingjstk  <- read.csv("e1_evolch4_scalingjstk.txt", header = FALSE, sep = " ")
#interpol
e1_interpolmain_scalingjstk<- read.csv("e1_interpolmain_scalingjstk.txt", header = FALSE, sep = " ")
e1_interpolmoda_scalingjstk<- read.csv("e1_interpolmoda_scalingjstk.txt", header = FALSE, sep = " ")
e1_interpolmodb_scalingjstk<- read.csv("e1_interpolmodb_scalingjstk.txt", header = FALSE, sep = " ")
e1_osctabmain_scalingjstk<- read.csv("e1_osctabmain_scalingjstk.txt", header = FALSE, sep = " ")
e1_osctabmoda_scalingjstk<- read.csv("e1_osctabmoda_scalingjstk.txt", header = FALSE, sep = " ")
e1_osctabmodb_scalingjstk<- read.csv("e1_osctabmodb_scalingjstk.txt", header = FALSE, sep = " ")


####engine2

#reverb
e2_idis_scalingjstk<- read.csv("e2_idis_scalingjstk.txt", header = FALSE, sep = " ")
e2_rev_scalingjstk<- read.csv("e2_rev_scalingjstk.txt", header = FALSE, sep = " ")
e2_arevsc_scalingjstk<- read.csv("e2_arevsc_scalingjstk.txt", header = FALSE, sep = " ")
e2_ch1_scalingjstk<- read.csv("e2_ch1_scalingjstk.txt", header = FALSE, sep = " ")
e2_ch2_scalingjstk<- read.csv("e2_ch2_scalingjstk.txt", header = FALSE, sep = " ")
e2_ch3_scalingjstk<- read.csv("e2_ch3_scalingjstk.txt", header = FALSE, sep = " ")
e2_ch4_scalingjstk<- read.csv("e2_ch4_scalingjstk.txt", header = FALSE, sep = " ")
#mastervol
e2_evolch1_scalingjstk<- read.csv("e2_evolch1_scalingjstk.txt", header = FALSE, sep = " ")
e2_evolch2_scalingjstk<- read.csv("e2_evolch2_scalingjstk.txt", header = FALSE, sep = " ")
e2_evolch3_scalingjstk<- read.csv("e2_evolch3_scalingjstk.txt", header = FALSE, sep = " ")
e2_evolch4_scalingjstk<- read.csv("e2_evolch4_scalingjstk.txt", header = FALSE, sep = " ")

#V1
#synth
e2v1_iamp_scalingjstk<- read.csv("e2v1_iamp_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_idifa_scalingjstk<- read.csv("e2v1_idifa_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_idifb_scalingjstk<- read.csv("e2v1_idifb_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_ifc_scalingjstk<- read.csv("e2v1_ifc_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_ifma_scalingjstk<- read.csv("e2v1_ifma_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_ifmb_scalingjstk<- read.csv("e2v1_ifmb_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_isk_scalingjstk<- read.csv("e2v1_isk_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_kndx_scalingjstk<- read.csv("e2v1_kndx_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_imag_scalingjstk<- read.csv("e2v1_imag_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_indxa_scalingjstk<- read.csv("e2v1_indxa_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_indxb_scalingjstk<- read.csv("e2v1_indxb_scalingjstk.txt", header = FALSE, sep = " ")
#tables
e2v1_ifn1_scalingjstk<- read.csv("e2v1_ifn1_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_ifn2_scalingjstk<- read.csv("e2v1_ifn2_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_ifn3_scalingjstk<- read.csv("e2v1_ifn3_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_ifn4_scalingjstk<- read.csv("e2v1_ifn4_scalingjstk.txt", header = FALSE, sep = " ")


#interpol
e2v1_interpolkndx_scalingjstk<- read.csv("e2v1_interpolkndx_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_interpolmain_scalingjstk<- read.csv("e2v1_interpolmain_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_interpolmoda_scalingjstk<- read.csv("e2v1_interpolmoda_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_interpolmodb_scalingjstk<- read.csv("e2v1_interpolmodb_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_osctabkndx_scalingjstk<- read.csv("e2v1_osctabkndx_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_osctabmain_scalingjstk<- read.csv("e2v1_osctabmain_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_osctabmoda_scalingjstk<- read.csv("e2v1_osctabmoda_scalingjstk.txt", header = FALSE, sep = " ")
e2v1_osctabmodb_scalingjstk<- read.csv("e2v1_osctabmodb_scalingjstk.txt", header = FALSE, sep = " ")

#V2
#synth
e2v2_iamp_scalingjstk<- read.csv("e2v2_iamp_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_idifa_scalingjstk<- read.csv("e2v2_idifa_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_idifb_scalingjstk<- read.csv("e2v2_idifb_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_ifc_scalingjstk<- read.csv("e2v2_ifc_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_ifma_scalingjstk<- read.csv("e2v2_ifma_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_ifmb_scalingjstk<- read.csv("e2v2_ifmb_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_imag_scalingjstk<- read.csv("e2v2_imag_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_indxa_scalingjstk<- read.csv("e2v2_indxa_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_indxb_scalingjstk<- read.csv("e2v2_indxb_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_isk_scalingjstk<- read.csv("e2v2_isk_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_kndx_scalingjstk<- read.csv("e2v2_kndx_scalingjstk.txt", header = FALSE, sep = " ")
#tables
e2v2_ifn1_scalingjstk<- read.csv("e2v2_ifn1_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_ifn2_scalingjstk<- read.csv("e2v2_ifn2_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_ifn3_scalingjstk<- read.csv("e2v2_ifn3_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_ifn4_scalingjstk<- read.csv("e2v2_ifn4_scalingjstk.txt", header = FALSE, sep = " ")
#interpol
e2v2_interpolkndx_scalingjstk<- read.csv("e2v2_interpolkndx_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_interpolmain_scalingjstk<- read.csv("e2v2_interpolmain_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_interpolmoda_scalingjstk<- read.csv("e2v2_interpolmoda_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_interpolmodb_scalingjstk<- read.csv("e2v2_interpolmodb_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_osctabkndx_scalingjstk<- read.csv("e2v2_osctabkndx_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_osctabmain_scalingjstk<- read.csv("e2v2_osctabmain_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_osctabmoda_scalingjstk<- read.csv("e2v2_osctabmoda_scalingjstk.txt", header = FALSE, sep = " ")
e2v2_osctabmodb_scalingjstk<- read.csv("e2v2_osctabmodb_scalingjstk.txt", header = FALSE, sep = " ")


####engine3

#reverb
e3_idis_scalingjstk<- read.csv("e3_idis_scalingjstk.txt", header = FALSE, sep = " ")
e3_rev_scalingjstk<- read.csv("e3_rev_scalingjstk.txt", header = FALSE, sep = " ")
e3_arevsc_scalingjstk<- read.csv("e3_arevsc_scalingjstk.txt", header = FALSE, sep = " ")
e3_ch1_scalingjstk<- read.csv("e3_ch1_scalingjstk.txt", header = FALSE, sep = " ")
e3_ch2_scalingjstk<- read.csv("e3_ch2_scalingjstk.txt", header = FALSE, sep = " ")
e3_ch3_scalingjstk<- read.csv("e3_ch3_scalingjstk.txt", header = FALSE, sep = " ")
e3_ch4_scalingjstk<- read.csv("e3_ch4_scalingjstk.txt", header = FALSE, sep = " ")
#mastervol
e3_evolch1_scalingjstk<- read.csv("e3_evolch1_scalingjstk.txt", header = FALSE, sep = " ")
e3_evolch2_scalingjstk<- read.csv("e3_evolch2_scalingjstk.txt", header = FALSE, sep = " ")
e3_evolch3_scalingjstk<- read.csv("e3_evolch3_scalingjstk.txt", header = FALSE, sep = " ")
e3_evolch4_scalingjstk<- read.csv("e3_evolch4_scalingjstk.txt", header = FALSE, sep = " ")
#synth
e3_iamp_scalingjstk<- read.csv("e3_iamp_scalingjstk.txt", header = FALSE, sep = " ")
e3_idifa_scalingjstk<- read.csv("e3_idifa_scalingjstk.txt", header = FALSE, sep = " ")
e3_idifb_scalingjstk<- read.csv("e3_idifb_scalingjstk.txt", header = FALSE, sep = " ")
e3_ifc_scalingjstk<- read.csv("e3_ifc_scalingjstk.txt", header = FALSE, sep = " ")
e3_ifma_scalingjstk<- read.csv("e3_ifma_scalingjstk.txt", header = FALSE, sep = " ")
e3_ifmb_scalingjstk<- read.csv("e3_ifmb_scalingjstk.txt", header = FALSE, sep = " ")
e3_imag_scalingjstk<- read.csv("e3_imag_scalingjstk.txt", header = FALSE, sep = " ")
e3_indxa_scalingjstk<- read.csv("e3_indxa_scalingjstk.txt", header = FALSE, sep = " ")
e3_indxb_scalingjstk<- read.csv("e3_indxb_scalingjstk.txt", header = FALSE, sep = " ")
e3_isk_scalingjstk<- read.csv("e3_isk_scalingjstk.txt", header = FALSE, sep = " ")
e3_kndx_scalingjstk<- read.csv("e3_kndx_scalingjstk.txt", header = FALSE, sep = " ")

#tables
e3_ifn1_scalingjstk<- read.csv("e3_ifn1_scalingjstk.txt", header = FALSE, sep = " ")
e3_ifn2_scalingjstk<- read.csv("e3_ifn2_scalingjstk.txt", header = FALSE, sep = " ")
e3_ifn3_scalingjstk<- read.csv("e3_ifn3_scalingjstk.txt", header = FALSE, sep = " ")
e3_ifn4_scalingjstk<- read.csv("e3_ifn4_scalingjstk.txt", header = FALSE, sep = " ")

#interpol
e3_interpolmain_scalingjstk<- read.csv("e3_interpolmain_scalingjstk.txt", header = FALSE, sep = " ")
e3_interpolmoda_scalingjstk<- read.csv("e3_interpolmoda_scalingjstk.txt", header = FALSE, sep = " ")
e3_interpolmodb_scalingjstk<- read.csv("e3_interpolmodb_scalingjstk.txt", header = FALSE, sep = " ")
e3_kndxinterpol_scalingjstk<- read.csv("e3_kndxinterpol_scalingjstk.txt", header = FALSE, sep = " ")
e3_kndxosctab_scalingjstk<- read.csv("e3_kndxosctab_scalingjstk.txt", header = FALSE, sep = " ")
e3_osctabmain_scalingjstk<- read.csv("e3_osctabmain_scalingjstk.txt", header = FALSE, sep = " ")
e3_osctabmoda_scalingjstk<- read.csv("e3_osctabmoda_scalingjstk.txt", header = FALSE, sep = " ")
e3_osctabmodb_scalingjstk<- read.csv("e3_osctabmodb_scalingjstk.txt", header = FALSE, sep = " ")


####engine4

#reverb
e4_idis_scalingjstk<- read.csv("e4_idis_scalingjstk.txt", header = FALSE, sep = " ")
e4_rev_scalingjstk<- read.csv("e1_evolch4_scalingjstk.txt", header = FALSE, sep = " ")
e4_arevsc_scalingjstk<- read.csv("e4_rev_scalingjstk.txt", header = FALSE, sep = " ")
e4_ch1_scalingjstk<- read.csv("e4_ch1_scalingjstk.txt", header = FALSE, sep = " ")
e4_ch2_scalingjstk<- read.csv("e4_ch2_scalingjstk.txt", header = FALSE, sep = " ")
e4_ch3_scalingjstk<- read.csv("e4_ch3_scalingjstk.txt", header = FALSE, sep = " ")
e4_ch4_scalingjstk<- read.csv("e4_ch4_scalingjstk.txt", header = FALSE, sep = " ")

e4_env_scalingjstk<- read.csv("e4_env_scalingjstk.txt", header = FALSE, sep = " ")
e4_envinterpol_scalingjstk<- read.csv("e4_envinterpol_scalingjstk.txt", header = FALSE, sep = " ")
e4_envosctab_scalingjstk<- read.csv("e4_envosctab_scalingjstk.txt", header = FALSE, sep = " ")
#mastervol
e4_evolch1_scalingjstk<- read.csv("e4_evolch1_scalingjstk.txt", header = FALSE, sep = " ")
e4_evolch2_scalingjstk<- read.csv("e4_evolch2_scalingjstk.txt", header = FALSE, sep = " ")
e4_evolch3_scalingjstk<- read.csv("e4_evolch3_scalingjstk.txt", header = FALSE, sep = " ")
e4_evolch4_scalingjstk<- read.csv("e4_evolch4_scalingjstk.txt", header = FALSE, sep = " ")
#synth
e4_iamp_scalingjstk<- read.csv("e4_iamp_scalingjstk.txt", header = FALSE, sep = " ")
e4_idifa_scalingjstk<- read.csv("e4_idifa_scalingjstk.txt", header = FALSE, sep = " ")
e4_idifb_scalingjstk<- read.csv("e4_idifb_scalingjstk.txt", header = FALSE, sep = " ")
e4_ifc_scalingjstk<- read.csv("e4_ifc_scalingjstk.txt", header = FALSE, sep = " ")
e4_ifma_scalingjstk<- read.csv("e4_ifma_scalingjstk.txt", header = FALSE, sep = " ")
e4_ifmb_scalingjstk<- read.csv("e4_ifmb_scalingjstk.txt", header = FALSE, sep = " ")
e4_skew_scalingjstk<- read.csv("e4_skew_scalingjstk.txt", header = FALSE, sep = " ")
e4_isk_scalingjstk<- read.csv("e4_isk_scalingjstk.txt", header = FALSE, sep = " ")
e4_imag_scalingjstk<- read.csv("e4_imag_scalingjstk.txt", header = FALSE, sep = " ")
e4_indxa_scalingjstk<- read.csv("e4_indxa_scalingjstk.txt", header = FALSE, sep = " ")
e4_indxb_scalingjstk<- read.csv("e4_indxb_scalingjstk.txt", header = FALSE, sep = " ")

#tables
e4_ifn1_scalingjstk<- read.csv("e4_ifn1_scalingjstk.txt", header = FALSE, sep = " ")
e4_ifn2_scalingjstk<- read.csv("e4_ifn2_scalingjstk.txt", header = FALSE, sep = " ")
e4_ifn3_scalingjstk<- read.csv("e4_ifn3_scalingjstk.txt", header = FALSE, sep = " ")
e4_ifn4_scalingjstk<- read.csv("e4_ifn4_scalingjstk.txt", header = FALSE, sep = " ")

#interpol
e4_interpolmain_scalingjstk<- read.csv("e4_interpolmain_scalingjstk.txt", header = FALSE, sep = " ")
e4_interpolmoda_scalingjstk<- read.csv("e4_interpolmoda_scalingjstk.txt", header = FALSE, sep = " ")
e4_interpolmodb_scalingjstk<- read.csv("e4_interpolmodb_scalingjstk.txt", header = FALSE, sep = " ")
e4_moda_scalingjstk<- read.csv("e4_moda_scalingjstk.txt", header = FALSE, sep = " ")
e4_modainterpol_scalingjstk<- read.csv("e4_modainterpol_scalingjstk.txt", header = FALSE, sep = " ")
e4_modaosctab_scalingjstk<- read.csv("e4_modaosctab_scalingjstk.txt", header = FALSE, sep = " ")
e4_modb_scalingjstk<- read.csv("e4_modb_scalingjstk.txt", header = FALSE, sep = " ")
e4_modbinterpol_scalingjstk<- read.csv("e4_modbinterpol_scalingjstk.txt", header = FALSE, sep = " ")
e4_modbosctab_scalingjstk<- read.csv("e4_modbosctab_scalingjstk.txt", header = FALSE, sep = " ")
e4_osctabmain_scalingjstk<- read.csv("e4_osctabmain_scalingjstk.txt", header = FALSE, sep = " ")
e4_osctabmoda_scalingjstk<- read.csv("e4_osctabmoda_scalingjstk.txt", header = FALSE, sep = " ")
e4_osctabmodb_scalingjstk<- read.csv("e4_osctabmodb_scalingjstk.txt", header = FALSE, sep = " ")
e4_skewinterpol_scalingjstk<- read.csv("e4_skewinterpol_scalingjstk.txt", header = FALSE, sep = " ")
e4_skewosctab_scalingjstk<- read.csv("e4_skewosctab_scalingjstk.txt", header = FALSE, sep = " ")

####engine5

#reverb
e5_idis_scalingjstk<- read.csv("e5_idis_scalingjstk.txt", header = FALSE, sep = " ")
e5_rev_scalingjstk<- read.csv("e5_rev_scalingjstk.txt", header = FALSE, sep = " ")
e5_arevsc_scalingjstk<- read.csv("e5_arevsc_scalingjstk.txt", header = FALSE, sep = " ")
e5_ch1_scalingjstk<- read.csv("e5_ch1_scalingjstk.txt", header = FALSE, sep = " ")
e5_ch2_scalingjstk<- read.csv("e5_ch2_scalingjstk.txt", header = FALSE, sep = " ")
e5_ch3_scalingjstk<- read.csv("e5_ch3_scalingjstk.txt", header = FALSE, sep = " ")
e5_ch4_scalingjstk<- read.csv("e5_ch4_scalingjstk.txt", header = FALSE, sep = " ")
#mastervol
e5_evolch1_scalingjstk<- read.csv("e5_evolch1_scalingjstk.txt", header = FALSE, sep = " ")
e5_evolch2_scalingjstk<- read.csv("e5_evolch2_scalingjstk.txt", header = FALSE, sep = " ")
e5_evolch3_scalingjstk<- read.csv("e5_evolch3_scalingjstk.txt", header = FALSE, sep = " ")
e5_evolch4_scalingjstk<- read.csv("e5_evolch4_scalingjstk.txt", header = FALSE, sep = " ")
#synth                           
e5_iamp_scalingjstk<- read.csv("e5_iamp_scalingjstk.txt", header = FALSE, sep = " ")
e5_idifa_scalingjstk<- read.csv("e5_idifa_scalingjstk.txt", header = FALSE, sep = " ")
e5_idifb_scalingjstk<- read.csv("e5_idifb_scalingjstk.txt", header = FALSE, sep = " ")
e5_ifc_scalingjstk<- read.csv("e5_ifc_scalingjstk.txt", header = FALSE, sep = " ")
e5_ifma_scalingjstk<- read.csv("e5_ifma_scalingjstk.txt", header = FALSE, sep = " ")
e5_ifmb_scalingjstk<- read.csv("e5_ifmb_scalingjstk.txt", header = FALSE, sep = " ")
e5_isk_scalingjstk<- read.csv("e5_isk_scalingjstk.txt", header = FALSE, sep = " ")
e5_kndx_scalingjstk<- read.csv("e5_kndx_scalingjstk.txt", header = FALSE, sep = " ")
e5_imag_scalingjstk<- read.csv("e5_imag_scalingjstk.txt", header = FALSE, sep = " ")
e5_indxa_scalingjstk<- read.csv("e5_indxa_scalingjstk.txt", header = FALSE, sep = " ")
e5_indxb_scalingjstk<- read.csv("e5_indxb_scalingjstk.txt", header = FALSE, sep = " ")
#tables
e5_ifn1_scalingjstk<- read.csv("e5_ifn1_scalingjstk.txt", header = FALSE, sep = " ")
e5_ifn2_scalingjstk<- read.csv("e5_ifn2_scalingjstk.txt", header = FALSE, sep = " ")
e5_ifn3_scalingjstk<- read.csv("e5_ifn3_scalingjstk.txt", header = FALSE, sep = " ")
e5_ifn4_scalingjstk<- read.csv("e5_ifn4_scalingjstk.txt", header = FALSE, sep = " ")

#interpol
e5_interpolmain_scalingjstk<- read.csv("e5_interpolmain_scalingjstk.txt", header = FALSE, sep = " ")
e5_interpolmoda_scalingjstk<- read.csv("e5_interpolmoda_scalingjstk.txt", header = FALSE, sep = " ")
e5_interpolmodb_scalingjstk<- read.csv("e5_interpolmodb_scalingjstk.txt", header = FALSE, sep = " ")
e5_osctabmain_scalingjstk<- read.csv("e5_osctabmain_scalingjstk.txt", header = FALSE, sep = " ")
e5_osctabmoda_scalingjstk<- read.csv("e5_osctabmoda_scalingjstk.txt", header = FALSE, sep = " ")
e5_osctabmodb_scalingjstk<- read.csv("e5_osctabmodb_scalingjstk.txt", header = FALSE, sep = " ")






#synth param
e1_iamp_scalingjstk
e1_idifa_scalingjstk
e1_idifb_scalingjstk
e1_ifc_scalingjstk
e1_ifma_scalingjstk
e1_ifmb_scalingjstk
e1_imag_scalingjstk
e1_indxa_scalingjstk
e1_indxb_scalingjstk
e1_isk_scalingjstk
e1_kndx_scalingjstk
#tables
e1_ifn1_scalingjstk
e1_ifn2_scalingjstk
e1_ifn3_scalingjstk
e1_ifn4_scalingjstk

#reverb
e1_rev_scalingjstk
e1_idis_scalingjstk
e1_arevsc_scalingjstk
e1_ch1_scalingjstk
e1_ch2_scalingjstk
e1_ch3_scalingjstk
e1_ch4_scalingjstk
#mastervol
e1_evolch1_scalingjstk
e1_evolch2_scalingjstk
e1_evolch3_scalingjstk
e1_evolch4_scalingjstk
#interpol
e1_interpolmain_scalingjstk
e1_interpolmoda_scalingjstk
e1_interpolmodb_scalingjstk
e1_osctabmain_scalingjstk
e1_osctabmoda_scalingjstk
e1_osctabmodb_scalingjstk


e2_arevsc_scalingjstk
e2_ch1_scalingjstk
e2_ch2_scalingjstk
e2_ch3_scalingjstk
e2_ch4_scalingjstk
e2_evolch1_scalingjstk
e2_evolch2_scalingjstk
e2_evolch3_scalingjstk
e2_evolch4_scalingjstk
e2_idis_scalingjstk
e2_rev_scalingjstk
e2v1_iamp_scalingjstk
e2v1_idifa_scalingjstk
e2v1_idifb_scalingjstk
e2v1_ifc_scalingjstk
e2v1_ifma_scalingjstk
e2v1_ifmb_scalingjstk
e2v1_ifn1_scalingjstk
e2v1_ifn2_scalingjstk
e2v1_ifn3_scalingjstk
e2v1_ifn4_scalingjstk
e2v1_imag_scalingjstk
e2v1_indxa_scalingjstk
e2v1_indxb_scalingjstk
e2v1_interpolkndx_scalingjstk
e2v1_interpolmain_scalingjstk
e2v1_interpolmoda_scalingjstk
e2v1_interpolmodb_scalingjstk
e2v1_isk_scalingjstk
e2v1_kndx_scalingjstk
e2v1_osctabkndx_scalingjstk
e2v1_osctabmain_scalingjstk
e2v1_osctabmoda_scalingjstk
e2v1_osctabmodb_scalingjstk
e2v2_iamp_scalingjstk
e2v2_idifa_scalingjstk
e2v2_idifb_scalingjstk
e2v2_ifc_scalingjstk
e2v2_ifma_scalingjstk
e2v2_ifmb_scalingjstk
e2v2_ifn1_scalingjstk
e2v2_ifn2_scalingjstk
e2v2_ifn3_scalingjstk
e2v2_ifn4_scalingjstk
e2v2_imag_scalingjstk
e2v2_indxa_scalingjstk
e2v2_indxb_scalingjstk
e2v2_interpolkndx_scalingjstk
e2v2_interpolmain_scalingjstk
e2v2_interpolmoda_scalingjstk
e2v2_interpolmodb_scalingjstk
e2v2_isk_scalingjstk
e2v2_kndx_scalingjstk
e2v2_osctabkndx_scalingjstk
e2v2_osctabmain_scalingjstk
e2v2_osctabmoda_scalingjstk
e2v2_osctabmodb_scalingjstk
e3_arevsc_scalingjstk
e3_ch1_scalingjstk
e3_ch2_scalingjstk
e3_ch3_scalingjstk
e3_ch4_scalingjstk
e3_evolch1_scalingjstk
e3_evolch2_scalingjstk
e3_evolch3_scalingjstk
e3_evolch4_scalingjstk
e3_iamp_scalingjstk
e3_idifa_scalingjstk
e3_idifb_scalingjstk
e3_idis_scalingjstk
e3_ifc_scalingjstk
e3_ifma_scalingjstk
e3_ifmb_scalingjstk
e3_ifn1_scalingjstk
e3_ifn2_scalingjstk
e3_ifn3_scalingjstk
e3_ifn4_scalingjstk
e3_imag_scalingjstk
e3_indxa_scalingjstk
e3_indxb_scalingjstk
e3_interpolmain_scalingjstk
e3_interpolmoda_scalingjstk
e3_interpolmodb_scalingjstk
e3_isk_scalingjstk
e3_kndx_scalingjstk
e3_kndxinterpol_scalingjstk
e3_kndxosctab_scalingjstk
e3_osctabmain_scalingjstk
e3_osctabmoda_scalingjstk
e3_osctabmodb_scalingjstk
e3_rev_scalingjstk
e4_arevsc_scalingjstk
e4_ch1_scalingjstk
e4_ch2_scalingjstk
e4_ch3_scalingjstk
e4_ch4_scalingjstk
e4_env_scalingjstk
e4_envinterpol_scalingjstk
e4_envosctab_scalingjstk
e4_evolch1_scalingjstk
e4_evolch2_scalingjstk
e4_evolch3_scalingjstk
e4_evolch4_scalingjstk
e4_iamp_scalingjstk
e4_idifa_scalingjstk
e4_idifb_scalingjstk
e4_idis_scalingjstk
e4_ifc_scalingjstk
e4_ifma_scalingjstk
e4_ifmb_scalingjstk
e4_ifn1_scalingjstk
e4_ifn2_scalingjstk
e4_ifn3_scalingjstk
e4_ifn4_scalingjstk
e4_imag_scalingjstk
e4_indxa_scalingjstk
e4_indxb_scalingjstk
e4_interpolmain_scalingjstk
e4_interpolmoda_scalingjstk
e4_interpolmodb_scalingjstk
e4_isk_scalingjstk
e4_moda_scalingjstk
e4_modainterpol_scalingjstk
e4_modaosctab_scalingjstk
e4_modb_scalingjstk
e4_modbinterpol_scalingjstk
e4_modbosctab_scalingjstk
e4_osctabmain_scalingjstk
e4_osctabmoda_scalingjstk
e4_osctabmodb_scalingjstk
e4_rev_scalingjstk
e4_skew_scalingjstk
e4_skewinterpol_scalingjstk
e4_skewosctab_scalingjstk
e5_arevsc_scalingjstk
e5_ch1_scalingjstk
e5_ch2_scalingjstk
e5_ch3_scalingjstk
e5_ch4_scalingjstk
e5_evolch1_scalingjstk
e5_evolch2_scalingjstk
e5_evolch3_scalingjstk
e5_evolch4_scalingjstk
e5_iamp_scalingjstk
e5_idifa_scalingjstk
e5_idifb_scalingjstk
e5_idis_scalingjstk
e5_ifc_scalingjstk
e5_ifma_scalingjstk
e5_ifmb_scalingjstk
e5_ifn1_scalingjstk
e5_ifn2_scalingjstk
e5_ifn3_scalingjstk
e5_ifn4_scalingjstk
e5_imag_scalingjstk
e5_indxa_scalingjstk
e5_indxb_scalingjstk
e5_interpolmain_scalingjstk
e5_interpolmoda_scalingjstk
e5_interpolmodb_scalingjstk
e5_isk_scalingjstk
e5_kndx_scalingjstk
e5_osctabmain_scalingjstk
e5_osctabmoda_scalingjstk
e5_osctabmodb_scalingjstk
e5_rev_scalingjstk

####buttonjstk

###scalingicon


####buttonicon




print(e1_idifa_preset)

