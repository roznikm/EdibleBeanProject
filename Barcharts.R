library(tidyverse)
library(scales)

## Black beans
black_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/BlackBeansImports.csv')
totals <- black_imports %>% group_by(Dest) %>% summarise(Total = sum(CAD))
totals <- totals %>% arrange(desc(Total)) 
totals <- totals[1:10,]
p <- ggplot(totals, aes(x=Dest, y=Total)) + 
  geom_bar(stat="identity", width=.5, fill="tomato3") + 
  xlab("Country of Origin") + ylab("Total Value in $CAD")
p + theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
  scale_y_continuous(labels = comma)


## Light red kidney beans
lrk_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/RedKidneyLightBeansImports.csv')
totals <- lrk_imports %>% group_by(Dest) %>% summarise(Total = sum(CAD))
totals <- totals %>% arrange(desc(Total)) 
totals <- totals[1:10,]
p <- ggplot(totals, aes(x=Dest, y=Total)) + 
  geom_bar(stat="identity", width=.5, fill="tomato3") + 
  xlab("Country of Origin") + ylab("Total Value in $CAD")
p + theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
  scale_y_continuous(labels = comma)

## Dark red kidney beans
drk_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/RedKidneyDarkBeansImports.csv')
totals <- drk_imports %>% group_by(Dest) %>% summarise(Total = sum(CAD))
totals <- totals %>% arrange(desc(Total)) 
totals <- totals[1:10,]
p <- ggplot(totals, aes(x=Dest, y=Total)) + 
  geom_bar(stat="identity", width=.5, fill="tomato3") + 
  xlab("Country of Origin") + ylab("Total Value in $CAD")
p + theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
  scale_y_continuous(labels = comma)

## Adzuki beans 
adzuki_dry_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/AdzukiDryBeansImports.csv')
totals <- adzuki_dry_imports %>% group_by(Dest) %>% summarise(Total = sum(CAD))
totals <- totals %>% arrange(desc(Total)) 
totals <- totals[1:10,]
p <- ggplot(totals, aes(x=Dest, y=Total)) + 
  geom_bar(stat="identity", width=.5, fill="tomato3") + 
  xlab("Country of Origin") + ylab("Total Value in $CAD")
p + theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
  scale_y_continuous(labels = comma)

## Mung beans Over 500g
mung_over500_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/MungOver500DryBeansImports.csv')
totals <- mung_over500_imports %>% group_by(Dest) %>% summarise(Total = sum(CAD))
totals <- totals %>% arrange(desc(Total)) 
totals <- totals[1:10,]
p <- ggplot(totals, aes(x=Dest, y=Total)) + 
  geom_bar(stat="identity", width=.5, fill="tomato3") + 
  xlab("Country of Origin") + ylab("Total Value in $CAD")
p + theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
  scale_y_continuous(labels = comma)

## Mung beans Under 500g
mung_under500_imports <- read_csv('/Users/lysaporth/Documents/Consulting/Marlene/PulseCanada/PulseSupplyChainStudy/GeocodedData/MungUnder500DryBeansImports.csv')
totals <- mung_under500_imports %>% group_by(Dest) %>% summarise(Total = sum(CAD))
totals <- totals %>% arrange(desc(Total)) 
totals <- totals[1:10,]
p <- ggplot(totals, aes(x=Dest, y=Total)) + 
  geom_bar(stat="identity", width=.5, fill="tomato3") + 
  xlab("Country of Origin") + ylab("Total Value in $CAD")
p + theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
  scale_y_continuous(labels = comma) 




