library("ggmap")
library(maptools)
library(maps)


datasetlocations <- c("Canberra", "Vancouver", "London", "Amsterdam", "Bastia", "Kluane", "Ram Mountain", "Soay", "Rum", "Gotland")
#ll.loc <- geocode(datasetlocations)

coord <- data.frame(lon=c(149.1300092, #Canberra
                 -123.283613, #Mandarte
                 -1.328596, # Wytham
                 5.049353, #Vlieland
                 8.748954, #Pirio
                 -138.974499, #Kluane
                 -115.870925, #ram
                 -8.578,#soay
                 -6.210810,#rum
                 9.567247,#chur 
                  3.807534, #montpellier
                 18.486745),#gotland
           lat= c(-35.28094,#canberra
                  48.633132,#Mandarte
                  51.772924,#Wytham
                  53.294669,#Vlieland
                  42.376509,#Pirio
                  61.071083,#kluane
                  52.380327,#ram
                  57.81,#soay
                  56.982293,#rum
                  46.811081,#chur
                  43.650036,#montpellier
                  57.46841))#gotland
pdf(file = "map.pdf", width = 9.6, height = 6.5)

map("world", fill=TRUE, col=rgb(20,150,20, maxColorValue = 255), bg=rgb(1,1,1, maxColorValue = 1), ylim=c(-90, 90), mar=c(0,0,0,0))

points(coord$lon,coord$lat, col=rgb(150, 20, 150, 255, maxColorValue = 255), pch=16, cex=1)
points(coord$lon,coord$lat, col=rgb(150, 20, 150, 220, maxColorValue = 255), pch=1, cex=2)
points(coord$lon,coord$lat, col=rgb(150, 20, 150, 220, maxColorValue = 255), pch=1, cex=3)
points(coord$lon,coord$lat, col=rgb(75, 10, 75, 255, maxColorValue = 255), pch=16, cex=0.5)
dev.off()

