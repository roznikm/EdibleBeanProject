library(tidyverse)
library(ggmap)
library(xtable)

register_google(key="key_goes_here")
has_google_key()

## White beans including Navy, etc 
navy_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/Data/ExportsWhiteBeansIncNavy.csv')
world <- qmap(location = c(21,-21), zoom=1) 
world + geom_segment(aes(x=lon, y=lat, xend=lon1, yend=lat1), 
                     data=location_export, alpha=0.3,linetype='dashed', arrow=arrow())

usa <- qmap(location = c(-96,40), zoom=3) 
p <- usa + geom_segment(aes(x=lon1, y=lat1, xend=lon, yend=lat), 
                     data=location_export, alpha=0.3,linetype='solid', arrow=arrow())

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansNorthAmericaExports.png',plot=p, dpi=300)

world <- qmap(location = c(21,-21), zoom=1) 
world + geom_segment(aes(x=lon, y=lat, xend=lon1, yend=lat1), 
                     data=location, alpha=0.3,linetype='dashed', arrow=arrow())

usa <- qmap(location = c(-96,40), zoom=3) 
p <- usa + geom_segment(aes(x=lon, y=lat, xend=lon1, yend=lat1), 
                        data=location_import, alpha=0.3,linetype='solid', arrow=arrow())

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansNorthAmericaImports.png',plot=p, dpi=300)

## North America exports and imports map 
northAmerica <- qmap(location = c(-99,39), zoom=3)
p <- northAmerica + geom_jitter(aes(x=lon, y=lat), data=location_export, 
                        col="blue", alpha=0.4, size=6, width = 1, height = 1) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansNorthAmericaExports.png',plot=p, dpi=300)

p <- northAmerica + geom_jitter(aes(x=lon, y=lat), data=location_import, 
                        col="blue", alpha=0.4, size=6, width = 1, height = 1) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansNorthAmericaImports.png',plot=p, dpi=300)


## Asia exports and import map 
asia <- qmap(location = c(107,29.5), zoom=3)
p <- asia + geom_jitter(aes(x=lon, y=lat), data=location_export, 
                  col="blue", alpha=0.4, size=6, width = 3, height = 3) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansAsiaExports.png',plot=p, dpi=300)

p <- asia + geom_jitter(aes(x=lon, y=lat), data=location_import, 
                        col="blue", alpha=0.4, size=6, width = 3, height = 3) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansAsiaImports.png',plot=p, dpi=300)

## Europe exports and import map 
europe <- qmap(location = c(15,48), zoom=4)
p <- europe + geom_jitter(aes(x=lon, y=lat), data=location_export, 
                        col="blue", alpha=0.4, size=6, width = 1.5, height = 1.5) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansEuropeExports.png',plot=p, dpi=300)

p <- europe + geom_jitter(aes(x=lon, y=lat), data=location_import, 
                          col="blue", alpha=0.4, size=6, width = 1.5, height = 1.5) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansEuropeImports.png',plot=p, dpi=300)

## South America exports and import map 
southAmerica <- qmap(location = c(-58,-20), zoom=4)
p <- southAmerica + geom_jitter(aes(x=lon, y=lat), data=location_export, 
                          col="blue", alpha=0.4, size=6, width = 1.5, height = 1.5) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansSouthAmericaExports.png',plot=p, dpi=300)

p <- southAmerica + geom_jitter(aes(x=lon, y=lat), data=location_import, 
                          col="blue", alpha=0.4, size=6, width = 1.5, height = 1.5) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansSouthAmericaImports.png',plot=p, dpi=300)

## Africa exports and import map 
africa <- qmap(location = c(22.3, 4.4), zoom=3)
p <- africa + geom_jitter(aes(x=lon, y=lat), data=location_export, 
                                col="blue", alpha=0.4, size=6, width = 1.5, height = 1.5) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansAfricaExports.png',plot=p, dpi=300)

p <- africa + geom_jitter(aes(x=lon, y=lat), data=location_import, 
                                col="blue", alpha=0.4, size=6, width = 1.5, height = 1.5) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansAfricaImports.png',plot=p, dpi=300)

table_exports <- navy_2013_exports %>% arrange(desc(CAD))
table_exports[40:60,]

table_imports <- navy_2013_imports %>% arrange(desc(CAD))
table_imports[70:90,]


