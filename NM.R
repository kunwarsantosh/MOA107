#setting Working Directory

getwd()
setwd("C:/Users/santosh.kunwar01/Documents/R/EUR/Norsk/MOA107")

#clean
rm(list = ls(all.names = TRUE))
gc()

#load Data
#Use haven package to import .sav data 
#(file = Norsk_Monitor_Total_1985-2019_SPSS_31mars.sav)

library(haven)
path = file.path("C:/Users/santosh.kunwar01/Documents/R/Eur", "Norsk",
                 "Norsk_Monitor_Total_1985-2019_SPSS_31mars.sav"
)

#Store Norsk Monitor Data (NMD)

NMD <- read_sav(path)
is.data.frame(NMD)
save(NMD, file = "NMD.Rda")

#trim_Data_related_Variables_only Norsk Monitor Trimmed (NMT)

NMT <- data.frame(NMD[, c('rspnr',
                         'popwgt',
                         'rspwgt',
                         'Year',
                         'Komnr',
                         'postnr',
                         'V0',
                         'Kjonn',
                         'Alder',
                         'V34',
                         'V34B',
                         'V37',
                         'V37B',
                         
                         'Q26_1',
                         'Q26_10',
                         'Q26_13',
                         'Q26_14',
                         'Q26_16',
                         'Q26_23',
                         'Q33_34',
                         'Q33_65',
                         'Q33_66',
                         'Q66_1',
                         'Q66_2',
                         'Q66_3',
                         'Q66_4',
                         'Q67_1',
                         'Q67_2',
                         'Q67_3',
                         'Q67_4',
                         'Q67_5',
                         'Q67_6',
                         'Q67_7',
                         'Q67_8',
                         'Q67_9',
                         'Q67_10',
                         'Q67_11',
                         'Q67_12',
                         'Q67_13',
                         'Q68',
                         'Q69_1',
                         'Q69_2',
                         'Q69_3',
                         'Q69_4',
                         'Q69_5',
                         'Q75_18',
                         'Q75_22',
                         'Q75_23',
                         'Q75_24',
                         'Q85_13',
                         'Q85_14',
                         'Q85_33',
                         'Q89_13_1',
                         'Q89_13_2',
                         'Q89_13_3',
                         'Q89_13_4',
                         'Q89_13_5',
                         'Q89_13_6',
                         'Q89_13_7',
                         'Q89_13_8',
                         'Q89_13_9',
                         'Q89_14_1',
                         'Q89_14_2',
                         'Q89_14_3',
                         'Q89_14_4',
                         'Q89_14_5',
                         'Q89_14_6',
                         'Q89_14_7',
                         'Q89_14_8',
                         'Q89_14_9',
                         'Q104_30',
                         'Q104_33',
                         'Q104_34',
                         'Q107A_1',
                         'Q107A_2',
                         'Q107A_3',
                         'Q107A_4',
                         'Q107A_5',
                         'Q107A_6',
                         'Q107A_7',
                         'Q107A_8',
                         'Q107A_9',
                         'Q107A_10',
                         'Q107A_11',
                         'Q107A_12',
                         'Q107A_13',
                         'Q107A_14',
                         'Q107A_15',
                         'Q107A_16',
                         'Q107A_17',
                         'Q107A_18',
                         'Q107A_19',
                         'Q107B_2',
                         'Q116_6',
                         'Q124_2',
                         'Q124_5',
                         'Q124_6',
                         'Q167_6',
                         'Q188_15',
                         'Q214A_6',
                         'Q214B_6',
                         'Q215_2',
                         'Q216_6',
                         'Q227_6',
                         'Q235_27',
                         'Q235_28',
                         'Q237_29',
                         'Q264_10_1',
                         'Q264_10_2',
                         'Q264_10_3',
                         'Q264_10_4',
                         'Q264_10_5',
                         
                         'Q227_5',
                         'Q244',
                         'Q245_1',
                         'Q245_2',
                         'Q245_3',
                         'Q245_4',
                         'Q245_5',
                         'Q245_6',
                         'Q245_7',
                         'Q251_24',
                         'Q258_5',
                         'Q269_17'
                         
                         
                         
                         
)])
save(NMT, file = "NMT.Rda")
write.csv(NMT, file = "NMT.csv")
