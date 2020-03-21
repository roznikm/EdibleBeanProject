library(tidyverse)

## Adzuki beans 
adzuki_dry_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/AdzukiDryBeansImports.csv')
adzuki_fresh_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/AdzukiFreshBeansImports.csv')
adzuki_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/AdzukiBeansExports.csv')

tab_data1 <- adzuki_exports %>% arrange(desc(CAD))
write.table(tab_data1[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

tab_data2 <- adzuki_dry_imports %>% arrange(desc(CAD))
write.table(tab_data2[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

tab_data3 <- adzuki_fresh_imports %>% arrange(desc(CAD))
write.table(tab_data3[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

## Black beans 
black_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/BlackBeansImports.csv')
black_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/BlackBeansExports.csv')

tab_data1 <- black_imports %>% arrange(desc(CAD))
write.table(tab_data1[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

tab_data2 <- black_exports %>% arrange(desc(CAD))
write.table(tab_data2[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

## Dark red kidney beans 
drk_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/RedKidneyDarkBeansExports.csv')
drk_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/RedKidneyDarkBeansImports.csv')

tab_data1 <- drk_exports %>% arrange(desc(CAD))
write.table(tab_data1[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

tab_data2 <- drk_imports %>% arrange(desc(CAD))
write.table(tab_data2[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

## Light red kidney beans
lrk_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/RedKidneyLightBeansExports.csv')
lrk_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/RedKidneyLightBeansImports.csv')

tab_data1 <- lrk_exports %>% arrange(desc(CAD))
write.table(tab_data1[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

tab_data2 <- lrk_imports %>% arrange(desc(CAD))
write.table(tab_data2[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

## Mung beans 
mung_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/mungBeansExports.csv')
mung_over500_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/MungOver500DryBeansImports.csv')
mung_under500_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/MungUnder500DryBeansImports.csv')

tab_data1 <- mung_exports %>% arrange(desc(CAD))
write.table(tab_data1[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

tab_data2 <- mung_over500_imports %>% arrange(desc(CAD))
write.table(tab_data2[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

tab_data3 <- mung_under500_imports %>% arrange(desc(CAD))
write.table(tab_data3[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

## White beans 
white_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/WhiteBeansExports.csv')
white_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/WhiteBeansImports.csv')

tab_data1 <- white_exports %>% arrange(desc(CAD))
write.table(tab_data1[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

tab_data2 <- white_imports %>% arrange(desc(CAD))
write.table(tab_data2[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

## Great northern beans
gnb_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/GreatNorthernBeansExports.csv')

tab_data1 <- gnb_exports %>% arrange(desc(CAD))
write.table(tab_data1[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

## Pinto beans
pinto_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ExportsPinto.csv')
names(pinto_exports) <- c("Date", "HS8", "Origin", "Dest", "ReExport", "Quantity", "CAD")
pinto_exports <- pinto_exports %>% filter(Date >= 201301)

tab_data1 <- pinto_exports %>% arrange(desc(CAD))
write.table(tab_data1[1:10,c('Date', 'Origin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

## Lima Beans 
lima_frozen_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ImportsLimaFrozen.csv')
lima_dry_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ImportsLimaMadagascarDriedShelled.csv')
names(lima_frozen_imports) <- c("Date", "HS8", "Orgin", "Dest", "DutiableTrade","Duty", "Quantity", "CAD")
names(lima_dry_imports) <- c("Date", "HS8", "Orgin", "Dest", "DutiableTrade","Duty", "Quantity", "CAD")

lima_frozen_imports <- lima_frozen_imports %>% filter(Date >= 201301)
lima_dry_imports <- lima_dry_imports %>% filter(Date >= 201301)

tab_data1 <- lima_frozen_imports %>% arrange(desc(CAD))
write.table(tab_data1[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

tab_data2 <- lima_dry_imports %>% arrange(desc(CAD))
write.table(tab_data2[1:10,c('Date', 'Orgin', 'Dest', 'Quantity', 'CAD')], sep = ",", row.names = FALSE)

