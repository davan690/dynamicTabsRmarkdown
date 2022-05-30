# BOM structure import and visual
# Hardish
# Canberra id is 40
# 30 stations
#this script attempts to create a generic set of data from BOM forecasts. THese are:
#

# https://docs.ropensci.org/bomrang/articles/get_radar_imagery-1.png
##Save to google drive
# full_radar <- get_available_radar()
# filter(full_radar, State == "NSW")
# dev.off()

library(bomrang)
library(tidyverse)

##station names for act
# QLD_bulletin <- get_ag_bulletin(state = "QLD")
ACT_bulletin <- get_ag_bulletin(state = "ACT")

glimpse(ACT_bulletin)

library(leaflet)

# leaflet()ACT_bulletin
#
# ##ALL BOM STATIONS DATA
# AUS_bulletin <-get_ag_bulletin(state = "AUS")
# #185 stations
#
# # AUS_bulletin <-get_ag_bulletin(state = "ACT")
#
#
# # Long but short forecast
actRain <- get_precis_forecast(state = "ACT")
glimpse(actRain)

actRain1 <- actRain %>%

#
# #no image find
# # get_available_imagery(product_id = "N65176")
#
# #canberra id is 40
act_radar <- get_available_radar(radar_id = 40)
# extract info needed
glimpse(act_radar)

imagesAval <- act_radar[,1]

# #need to save and clear cache!
#level of scale observed not times....
#update every 5 mins?
#could run this 5 times over 5 x5mins (25mins at 6am?)
get_radar_imagery(product_id = imagesAval[1])
get_radar_imagery(product_id = imagesAval[2])
get_radar_imagery(product_id = imagesAval[3])
get_radar_imagery(product_id = imagesAval[4])


#04:04UTC
# format(pb.date,usetz=TRUE, tz="Etc/GMT+8")

save.image(file = paste0("data/test", "", ".png")

           #all files downloaded
           #check these are not different
           #what ones do I need?

           list.files(manage_cache$cache_path_get())

           aLINK <- manage_cache$cache_path_get()

           # ifelse()
           #doesnt work get_historical_weather, get_weather_bulletins() get_current_weather()
           # bomrang::get_weather_bulletin(state = "ACT", morning = TRUE)

           # get_historical_weather(stationid = "IDN65176")
