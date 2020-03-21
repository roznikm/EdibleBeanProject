library(tidyverse)
library(ggmap)
library(xtable)
library(gridExtra)

register_google(key="Key_goes_here")
has_google_key()

world <- qmap(location = c(21,-21), zoom=1) 
northAmerica <- qmap(location = c(-99,39), zoom=3)
asia <- qmap(location = c(107,29.5), zoom=3)
asiaLarge <- qmap(location = c(107,29.5), zoom=2)

europe <- qmap(location = c(15,48), zoom=4)
southAmerica <- qmap(location = c(-58,-20), zoom=4)
africa <- qmap(location = c(22.3, 4.4), zoom=3)

## White beans including Navy, etc 
##### Exports 
navy_exports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/WhiteBeansExports.csv')
navy_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/WhiteBeansImports.csv')

world + geom_segment(aes(x=lon, y=lat, xend=lon1, yend=lat1), 
                     data=navy_exports, alpha=0.3,linetype='dashed', arrow=arrow())

p <- northAmerica + geom_segment(aes(x=lon1, y=lat1, xend=lon, yend=lat), 
                     data=navy_exports, alpha=0.3,linetype='solid', arrow=arrow())

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansNorthAmericaExports.png',plot=p, dpi=300)

world + geom_segment(aes(x=lon, y=lat, xend=lon1, yend=lat1), 
                     data=location, alpha=0.3,linetype='dashed', arrow=arrow())

p <- northAmerica + geom_segment(aes(x=lon, y=lat, xend=lon1, yend=lat1), 
                        data=location_import, alpha=0.3,linetype='solid', arrow=arrow())

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansNorthAmericaImports.png',plot=p, dpi=300)

## North America exports and imports map 
p <- northAmerica + geom_jitter(aes(x=lon, y=lat), data=location_export, 
                        col="blue", alpha=0.4, size=6, width = 1, height = 1) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansNorthAmericaExports.png',plot=p, dpi=300)

p <- northAmerica + geom_jitter(aes(x=lon, y=lat), data=location_import, 
                        col="blue", alpha=0.4, size=6, width = 1, height = 1) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansNorthAmericaImports.png',plot=p, dpi=300)


## Asia exports and import map 
p <- asia + geom_jitter(aes(x=lon, y=lat), data=location_export, 
                  col="blue", alpha=0.4, size=6, width = 3, height = 3) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansAsiaExports.png',plot=p, dpi=300)

p <- asia + geom_jitter(aes(x=lon, y=lat), data=location_import, 
                        col="blue", alpha=0.4, size=6, width = 3, height = 3) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansAsiaImports.png',plot=p, dpi=300)

## Europe exports and import map 
p <- europe + geom_jitter(aes(x=lon, y=lat), data=location_export, 
                        col="blue", alpha=0.4, size=6, width = 1.5, height = 1.5) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansEuropeExports.png',plot=p, dpi=300)

p <- europe + geom_jitter(aes(x=lon, y=lat), data=location_import, 
                          col="blue", alpha=0.4, size=6, width = 1.5, height = 1.5) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansEuropeImports.png',plot=p, dpi=300)

## South America exports and import map 
p <- southAmerica + geom_jitter(aes(x=lon, y=lat), data=location_export, 
                          col="blue", alpha=0.4, size=6, width = 1.5, height = 1.5) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansSouthAmericaExports.png',plot=p, dpi=300)

p <- southAmerica + geom_jitter(aes(x=lon, y=lat), data=location_import, 
                          col="blue", alpha=0.4, size=6, width = 1.5, height = 1.5) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansSouthAmericaImports.png',plot=p, dpi=300)

## Africa exports and import map 
p <- africa + geom_jitter(aes(x=lon, y=lat), data=location_export, 
                                col="blue", alpha=0.4, size=6, width = 1.5, height = 1.5) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansAfricaExports.png',plot=p, dpi=300)

p <- africa + geom_jitter(aes(x=lon, y=lat), data=location_import, 
                                col="blue", alpha=0.4, size=6, width = 1.5, height = 1.5) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/WhiteBeansAfricaImports.png',plot=p, dpi=300)

## Adzuki Beans
adzuki_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/AdzukiDryBeansImports.csv')
adzuki_imports <- adzuki_imports %>% filter(Dest != 'Canada')
p1 <- northAmerica + geom_jitter(aes(x=lon, y=lat), data=adzuki_imports, 
                                      col="blue", alpha=0.4, size=6, width = 1, height = 1) 

p2 <- asia + geom_jitter(aes(x=lon, y=lat), data=adzuki_imports, 
                                 col="blue", alpha=0.4, size=6, width = 1, height = 1) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/AdzukiBeansImports.png',arrangeGrob(p2,p1,ncol=2), dpi=300)

## Dark red kidney beans
drk_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/RedKidneyDarkBeansImports.csv')
drk_imports <- drk_imports %>% filter(Dest != 'Canada')

p1 <- northAmerica + geom_segment(aes(x=lon, y=lat, xend=lon1, yend=lat1), 
                                  data=drk_imports, alpha=0.3,linetype='solid', arrow=arrow())

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/DarkRedKidneyBeanImports.png',plot=p1, dpi=300)

## Light red kidney beans 
lrk_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/RedKidneyLightBeansImports.csv')
lrk_imports <- lrk_imports %>% filter(Dest != 'Canada')

p1 <- northAmerica + geom_segment(aes(x=lon, y=lat, xend=lon1, yend=lat1), 
                                  data=lrk_imports, alpha=0.3,linetype='solid', arrow=arrow())

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/LightRedKidneyBeanImports.png',plot=p1, dpi=300)

## Mung beans
mung_over500_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/MungOver500DryBeansImports.csv')
p1 <- asiaLarge + geom_jitter(aes(x=lon, y=lat), data=mung_over500_imports, 
                         col="blue", alpha=0.4, size=6, width = 1, height = 1) 

ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/MungBeanImports.png',plot=p1, dpi=300)

mung_under500_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/MungUnder500DryBeansImports.csv')
p2 <- asiaLarge + geom_jitter(aes(x=lon, y=lat), data=mung_under500_imports, 
                              col="blue", alpha=0.4, size=6, width = 1, height = 1) 
ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/MungBeanUnder500gImports.png',plot=p2, dpi=300)

## Black beans 
black_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/BlackBeansImports.csv')
black_imports <- black_imports %>% filter(Dest != 'Canada')

p1 <- northAmerica + geom_segment(aes(x=lon, y=lat, xend=lon1, yend=lat1), 
                                  data=black_imports, alpha=0.3,linetype='solid', arrow=arrow())
ggsave('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/BlackBeanImports.png',plot=p1, dpi=300)






