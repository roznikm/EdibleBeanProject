library(tidyverse)
library(ggmap)

register_google(key="Key_goes_here")
has_google_key()

### White beans including navy beans 
navy_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ExportsWhiteBeansIncNavy.csv')
names(navy_exports) <- c("Date", "HS8", "Orgin", "Dest", "ReExport", "Quantity", "CAD")
navy_2013_exports <- navy_exports %>% filter(Date >= 201301)
navy_2013_exports$ReExport <- as.factor(navy_2013_exports$ReExport)

location_export <- mutate_geocode(navy_2013_exports, Dest)
location_export <- mutate_geocode(location_export, Orgin)

write_csv(location_export, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/WhiteBeansExports.csv")

navy_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ImportsWhiteBeansIncNavy.csv')
names(navy_imports) <- c("Date", "HS8", "Orgin", "Dest", "DutiableTrade","Duty", "Quantity", "CAD")
navy_2013_imports <- navy_imports %>% filter(Date >= 201301)
navy_2013_imports$DutiableTrade <- as.factor(navy_2013_imports$DutiableTrade)

location_import <- mutate_geocode(navy_2013_imports, Dest)
location_import <- mutate_geocode(location_import, Orgin)

write_csv(location_import, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/WhiteBeansImports.csv")

### Black beans
black_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ExportsBlackBeansDriedShelled.csv')
names(black_exports) <- c("Date", "HS8", "Orgin", "Dest", "ReExport", "Quantity", "CAD")
black_2013_exports <- black_exports %>% filter(Date >= 201301)
black_2013_exports$ReExport <- as.factor(black_2013_exports$ReExport)

location_export <- mutate_geocode(black_2013_exports, Dest)
location_export <- mutate_geocode(location_export, Orgin)

write_csv(location_export, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/BlackBeansExports.csv")

black_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ImportsWhiteBeansIncNavy.csv')
names(black_imports) <- c("Date", "HS8", "Orgin", "Dest", "DutiableTrade","Duty", "Quantity", "CAD")
black_2013_imports <- black_imports %>% filter(Date >= 201301)
black_2013_imports$DutiableTrade <- as.factor(black_2013_imports$DutiableTrade)

location_import <- mutate_geocode(black_2013_imports, Dest)
location_import <- mutate_geocode(location_import, Orgin)

write_csv(location_import, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/BlackBeansImports.csv")

### Great northern beans
gn_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ExportsGreatNorthernDriedShelled.csv')
names(gn_exports) <- c("Date", "HS8", "Orgin", "Dest", "ReExport", "Quantity", "CAD")
gn_2013_exports <- gn_exports %>% filter(Date >= 201301)
gn_2013_exports$ReExport <- as.factor(gn_2013_exports$ReExport)

location_export <- mutate_geocode(gn_2013_exports, Dest)
location_export <- mutate_geocode(location_export, Orgin)

write_csv(location_export, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/GreatNorthernBeansExports.csv")

### Red kidney beans dark
rkd_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ExportsRedKidneyDark.csv')
names(rkd_exports) <- c("Date", "HS8", "Orgin", "Dest", "ReExport", "Quantity", "CAD")
rkd_2013_exports <- rkd_exports %>% filter(Date >= 201301)
rkd_2013_exports$ReExport <- as.factor(rkd_2013_exports$ReExport)

location_export <- mutate_geocode(rkd_2013_exports, Dest)
location_export <- mutate_geocode(location_export, Orgin)

write_csv(location_export, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/RedKidneyDarkBeansExports.csv")

rkd_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ImportsRedKidneyDark.csv')
names(rkd_imports) <- c("Date", "HS8", "Orgin", "Dest", "DutiableTrade","Duty", "Quantity", "CAD")
rkd_2013_imports <- rkd_imports %>% filter(Date >= 201301)
rkd_2013_imports$DutiableTrade <- as.factor(rkd_2013_imports$DutiableTrade)

location_import <- mutate_geocode(rkd_2013_imports, Dest)
location_import <- mutate_geocode(location_import, Orgin)

write_csv(location_import, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/RedKidneyDarkBeansImports.csv")

### Red kidney beans light
rkl_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ExportsRedKidneyLight.csv')
names(rkl_exports) <- c("Date", "HS8", "Orgin", "Dest", "ReExport", "Quantity", "CAD")
rkl_2013_exports <- rkl_exports %>% filter(Date >= 201301)
rkl_2013_exports$ReExport <- as.factor(rkl_2013_exports$ReExport)

location_export <- mutate_geocode(rkl_2013_exports, Dest)
location_export <- mutate_geocode(location_export, Orgin)

write_csv(location_export, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/RedKidneyLightBeansExports.csv")

rkl_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ImportsRedKidneyLight.csv')
names(rkl_imports) <- c("Date", "HS8", "Orgin", "Dest", "DutiableTrade","Duty", "Quantity", "CAD")
rkl_2013_imports <- rkl_imports %>% filter(Date >= 201301)
rkl_2013_imports$DutiableTrade <- as.factor(rkl_2013_imports$DutiableTrade)

location_import <- mutate_geocode(rkl_2013_imports, Dest)
location_import <- mutate_geocode(location_import, Orgin)

write_csv(location_import, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/RedKidneyLightBeansImports.csv")

### Adzuki dried beans and fresh chilled imports 
adzuki_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ExportsAdzukiDriedShelled.csv')
names(adzuki_exports) <- c("Date", "HS8", "Orgin", "Dest", "ReExport", "Quantity", "CAD")
adzuki_2013_exports <- adzuki_exports %>% filter(Date >= 201301)
adzuki_2013_exports$ReExport <- as.factor(adzuki_2013_exports$ReExport)

location_export <- mutate_geocode(adzuki_2013_exports, Dest)
location_export <- mutate_geocode(location_export, Orgin)

write_csv(location_export, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/AdzukiBeansExports.csv")

adzuki_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ImportsAdzukiDriedShelled.csv')
names(adzuki_imports) <- c("Date", "HS8", "Orgin", "Dest", "DutiableTrade","Duty", "Quantity", "CAD")
adzuki_2013_imports <- adzuki_imports %>% filter(Date >= 201301)
adzuki_2013_imports$DutiableTrade <- as.factor(adzuki_2013_imports$DutiableTrade)

location_import <- mutate_geocode(adzuki_2013_imports, Dest)
location_import <- mutate_geocode(location_import, Orgin)

write_csv(location_import, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/AdzukiDryBeansImports.csv")

adzuki_fresh_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ImportsAdzukiFreshChilled.csv')
names(adzuki_fresh_imports) <- c("Date", "HS8", "Orgin", "Dest", "DutiableTrade","Duty", "Quantity", "CAD")
adzuki_fresh_2013_imports <- adzuki_fresh_imports %>% filter(Date >= 201301)
adzuki_fresh_2013_imports$DutiableTrade <- as.factor(adzuki_fresh_2013_imports$DutiableTrade)

location_import <- mutate_geocode(adzuki_fresh_2013_imports, Dest)
location_import <- mutate_geocode(location_import, Orgin)

write_csv(location_import, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/AdzukiFreshBeansImports.csv")

### Mung
mung_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ExportsUrdMungBlackGreenGramBeansDriedShelled.csv')
names(mung_exports) <- c("Date", "HS8", "Orgin", "Dest", "ReExport", "Quantity", "CAD")
mung_2013_exports <- mung_exports %>% filter(Date >= 201301)
mung_2013_exports$ReExport <- as.factor(mung_2013_exports$ReExport)

location_export <- mutate_geocode(mung_2013_exports, Dest)
location_export <- mutate_geocode(location_export, Orgin)

write_csv(location_export, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/mungBeansExports.csv")

mung_over500_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ImportsMungGreenGreater500grams.csv')
names(mung_over500_imports) <- c("Date", "HS8", "Orgin", "Dest", "DutiableTrade","Duty", "Quantity", "CAD")
mung_over500_2013_imports <- mung_over500_imports %>% filter(Date >= 201301)
mung_over500_2013_imports$DutiableTrade <- as.factor(mung_over500_2013_imports$DutiableTrade)

location_import <- mutate_geocode(mung_over500_2013_imports, Dest)
location_import <- mutate_geocode(location_import, Orgin)

write_csv(location_import, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/MungOver500DryBeansImports.csv")

mung_under500_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ImportsMungGreenLess500grams.csv')
names(mung_under500_imports) <- c("Date", "HS8", "Orgin", "Dest", "DutiableTrade","Duty", "Quantity", "CAD")
mung_under500_2013_imports <- mung_under500_imports %>% filter(Date >= 201301)
mung_under500_2013_imports$DutiableTrade <- as.factor(mung_under500_2013_imports$DutiableTrade)

location_import <- mutate_geocode(mung_under500_2013_imports, Dest)
location_import <- mutate_geocode(location_import, Orgin)

write_csv(location_import, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/MungUnder500DryBeansImports.csv")

## Lima beans imports only (there are no lima bean exports)
lima_frozen_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ImportsLimaFrozen.csv')
names(lima_frozen_imports) <- c("Date", "HS8", "Orgin", "Dest", "DutiableTrade","Duty", "Quantity", "CAD")
lima_frozen_2013_imports <- lima_frozen_imports %>% filter(Date >= 201301)
lima_frozen_2013_imports$DutiableTrade <- as.factor(lima_frozen_2013_imports$DutiableTrade)

location_import <- mutate_geocode(lima_frozen_2013_imports, Dest)
location_import <- mutate_geocode(location_import, Orgin)

write_csv(location_import, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/limafrozenBeansImports.csv")

lima_dry_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ImportsLimaMadagascarDriedShelled.csv')
names(lima_dry_imports) <- c("Date", "HS8", "Orgin", "Dest", "DutiableTrade","Duty", "Quantity", "CAD")
lima_dry_2013_imports <- lima_dry_imports %>% filter(Date >= 201301)
lima_dry_2013_imports$DutiableTrade <- as.factor(lima_dry_2013_imports$DutiableTrade)

location_import <- mutate_geocode(lima_dry_2013_imports, Dest)
location_import <- mutate_geocode(location_import, Orgin)

write_csv(location_import, path="/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/limadryDryBeansImports.csv")



