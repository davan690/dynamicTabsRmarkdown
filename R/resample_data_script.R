# creating simulated dataset from ged data
#Anthony Davidson
#Aug2021

#libraries needed
library(tidyverse)
library(readxl)

#import data
dat <- read_csv("data/random_ged_resample1.csv")

#check data
glimpse(dat)

##wrangle data
dat1 <- dat %>%
         mutate(siteR = sample(n, replace = T))

#if all false then different dataset
#sampled with replacement
#could look like anything else?
table(dat1$siteR == dat1$site)

dat2 <- dat1 %>%
          dplyr::select(site, grid.id, year, recap, siteR, n) #%>%
            # mutate(n = siteR)

#save new dataset
write.csv(dat2, "data/random_ged_resample2.csv")
