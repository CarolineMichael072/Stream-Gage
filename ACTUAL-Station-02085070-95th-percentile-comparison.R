buildURL <- function(siteNumber){
  url <- "http://waterservices.usgs.gov/nwis/stat/?format=rdb&sites="
  url <- paste0(url,siteNumber,"&statReportType=daily&statTypeCd=p95")
  return(url)
  }
buildURL(02085070)
buildURL("02085070")

# 95th percentile of discharge by date
# Hurricane Floyd between dates 1999-09-07 and 1999-09-19 
# Build Table of 95th percentile discharge for the month of September
Site02085070 <- buildURL("02085070")
Site02085070

readNWISstat <- function (siteNumber, parameterCd)
    {
      url <- buildURL(siteNumber)
      data <- read.table(url,sep="\t",header=T)
      #remove first row
        data <- data[2:length(data[,1]),]
        #keep only discharge values
          data <- data[data$parameter_cd==parameterCd,]
               
            return(data)
          }
head(readNWISstat("02085070", "00060"))

Site02085070.Data <- readNWISstat("02085070", "00060")
head(Site02085070.Data)

# install.packages("xtable")
library(xtable)
xtable(Site02085070.Data[246:275, ])
xtable(Site02085070.Data[245:275, ])

library(waterData)
# Retrieve discharge rates for this station from Hurricane Floyd
# We will evalutate data between 1999-09-01 to 1999-09-26
importDVs("02085070", code="00060", stat="00003", sdate="1999-09-01",
          edate="1999-09-26")

discharge.comparison <- matrix(c(5.1, 3.9, 3.5, 23.0, 1390.0, 2250.0,
                                 450.0, 130.0, 80.0, 58.0, 42.0, 35.0, 
                                 28.0, 24.0, 142.0, 5360.0, 953.0, 341.0, 
                                 141.0, 91.0, 194.0, 795.0, 234.0, 109.0, 
                                 79.0, 62.0, 330.0, 176.0, 108.0, 386.0, 
                                 488.0, 3050.0, 2080.0, 685.0, 343.0, 156.0, 
                                 180.0, 268.0, 186.0, 98.0, 88.0, 65.0, 148.0, 
                                 381.0, 326.0, 158.0, 197.0, 115.0, 424.0,
                                 222.0, 360.0, 598.0), ncol=2, nrow=27)

discharge.comparison <- matrix(c(5.1, 3.9, 3.5, 23.0, 1390.0, 2250.0, 450.0,
                                 130.0, 80.0, 58.0, 42.0, 35.0, 28.0, 24.0,
                                 142.0, 5360.0, 953.0, 341.0, 141.0, 91.0, 
                                 194.0, 795.0, 234.0, 109.0, 79.0, 62.0, 330.0, 
                                 176.0, 108.0, 386.0, 488.0, 3050.0, 2080.0, 
                                 685.0, 343.0, 156.0, 180.0, 268.0, 186.0, 
                                 98.0, 88.0, 65.0, 148.0, 381.0, 326.0, 158.0, 
                                 197.0, 115.0, 424.0, 222.0, 360.0, 598.0),
                               ncol=2, nrow=26)
discharge.comparison
discharge.comparison <- matrix(c(5.1, 3.9, 3.5, 23.0, 1390.0, 2250.0, 450.0, 
                                 130.0, 80.0, 58.0, 42.0, 35.0, 28.0, 24.0, 
                                 142.0, 5360.0, 953.0, 341.0, 141.0, 91.0, 
                                 194.0, 795.0, 234.0, 109.0, 79.0, 62.0, 330.0,
                                 176.0, 108.0, 386.0, 488.0, 3050.0, 2080.0, 
                                 685.0, 343.0, 156.0, 180.0, 268.0, 186.0, 
                                 98.0, 88.0, 65.0, 148.0, 381.0, 326.0, 158.0, 
                                 197.0, 115.0, 424.0, 222.0, 360.0, 598.0), 
                               ncol=2, nrow=26)
colnames(discharge.comparison) <- c("1999 Hurricane Floyd Discharge",
                                    "95th Percentile Discharge")
discharge.comparison

# Matrix shows the 1999 Hurricane Floyd discharge campared to the 95th percentile discharge at this stream gage
# The number of rows represents the day in September (1st-26th)