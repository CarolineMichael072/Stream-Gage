# Find other stream gage stations in the path of Hurricane Floyd
> # Previous station, 02085070, was in Durham County
  > # We want to find a stream gage that was more directly in Floyd's path
  > stream_stations <- function(fips, date_min, date_max, fraction_coverage = NULL){
    +     fips <- paste(fips, collapse = ",")
    +     url <- paste0("http://waterservices.usgs.gov/nwis/site/?format=rdb&countyCd=",
                        +                   fips, "&startDT=", date_min, "&endDT=", date_max,
                        +                   "&outputDataTypeCd=dv&parameterCd=00060&siteType=ST")
    +     
      +     df <- read.table(url, sep = "\t", comment.char = "#", header = TRUE)
      +     df <- df[-1, ]
      +     
        +     df$begin_date <- lubridate::ymd(df$begin_date)
        +     df$end_date <- lubridate::ymd(df$end_date)
        +     
          +     df <- dplyr::mutate(df, date_range = df$end_date - df$begin_date)
          +     df$date_range <- as.numeric(df$date_range)
          +     df$count_nu <- as.numeric(df$count_nu)
          +     
            +     df <- dplyr::mutate(df, perc_coverage = (count_nu/date_range))
            +     if(is.null(fraction_coverage)){
              +         fraction_coverage <- min(df$perc_coverage)
              +     }
            +     
              +     df <- filter(df, perc_coverage >= fraction_coverage)
              +     
                +     vec <- as.character(unique(df$site_no))
                +     return(vec)
                + }
  > stream_stations("37129")
  Error in paste0("http://waterservices.usgs.gov/nwis/site/?format=rdb&countyCd=",  : 
                    argument "date_min" is missing, with no default
                  > stream_stations("37129", "1987-01-01", "2014-12-31")
                  Error in filter(df, perc_coverage >= fraction_coverage) : 
                    object 'perc_coverage' not found
                  > stream_stations("37129", "1987-01-01", "2014-12-31", fraction_coverage=NULL)
                  Error in filter(df, perc_coverage >= fraction_coverage) : 
                    object 'perc_coverage' not found
                  > library(dplyr)
                  
                  Attaching package: ‘dplyr’
                  
                  The following objects are masked from ‘package:stats’:
                    
                    filter, lag
                  
                  The following objects are masked from ‘package:base’:
                    
                    intersect, setdiff, setequal, union
                  
                  > stream_stations("37129", "1987-01-01", "2014-12-31", fraction_coverage=NULL)
                  [1] "02093229"
                  > buildURL <- function(siteNumber){
                    +     +     url <- "http://waterservices.usgs.gov/nwis/stat/?format=rdb&sites="
                    +     +     url <- paste0(url,siteNumber,"&statReportType=daily&statTypeCd=p95")
                    +     +     return(url)
                    +     + }
                  Error: unexpected '}' in:
                    "    +     return(url)
                  + }"
                  > buildURL("02093229")
                  [1] "http://waterservices.usgs.gov/nwis/stat/?format=rdb&sites=02093229&statReportType=daily&statTypeCd=p95"
                  > # Almost all 95th percentile values for this station in New Hanover County NC near Wilmington, NC are listed as 14 cfs
                    > # Data may not be reliable
                    > # CORRECTION-station 02093229 does not list any 95th percentile flow values
                    > # Search for new stations
                    > stream_stations("37141", "1987-01-01", "2014-12-31", fraction_coverage=NULL)
                  [1] "02107544" "02108566"
                  > buildURL("021007544")
                  [1] "http://waterservices.usgs.gov/nwis/stat/?format=rdb&sites=021007544&statReportType=daily&statTypeCd=p95"
                  > # Build URL function above outputs invalid url
                    > buildURL("02107544")
                  [1] "http://waterservices.usgs.gov/nwis/stat/?format=rdb&sites=02107544&statReportType=daily&statTypeCd=p95"
                  > # Station 02107544 in Pender County, NC near Wilmington, NC has no 95th percentile flow values. All data is from 2004 only
                    > buildURL("02108566")
                  [1] "http://waterservices.usgs.gov/nwis/stat/?format=rdb&sites=02108566&statReportType=daily&statTypeCd=p95"
                  > # This station also in Pender County, NC also has no 95th percentile flow values.
                    > stream_stations("37019", "1987-01-01", "2014-12-31", fraction_coverage=NULL)
                  [1] "02105900" "02109500"
                  > buildURL("02105900")
                  [1] "http://waterservices.usgs.gov/nwis/stat/?format=rdb&sites=02105900&statReportType=daily&statTypeCd=p95"
                  > readNWISstat <- function (siteNumber, parameterCd)
                    +     + {
                      +         +     url <- buildURL(siteNumber)
                      +         +     data <- read.table(url,sep="\t",header=T)
                      +         +     #remove first row
                        +             +     data <- data[2:length(data[,1]),]
                        +             +     #keep only discharge values
                          +                 +     data <- data[data$parameter_cd==parameterCd,]
                          +                 +     
                            +                     +     return(data)
                          +                 + }
                  Error: unexpected '}' in:
                    "                    +     return(data)
                  + }"
                  > readNWISstat("02105900", "00060")
                  Error: could not find function "readNWISstat"
                  > readNWISstat <- function (siteNumber, parameterCd)
                    + +  {
                      + +     url <- buildURL(siteNumber)
                      + +     data <- read.table(url,sep="\t",header=T)
                      + +     #remove first row
                        + +     data <- data[2:length(data[,1]),]
                        + +     #keep only discharge values
                          + +     data <- data[data$parameter_cd==parameterCd,]
                          + +     
                            + +     return(data)
                          +  }
                  > readNWISstat("02105900", "00060")
                  Error in +url <- buildURL(siteNumber) : could not find function "+<-"
                  > buildURL <- function(siteNumber){+url <- "http://waterservices.usgs.gov/nwis/stat/?format=rdb&sites="
                  +     +url <- paste0(url,siteNumber,"&statReportType=daily&statTypeCd=p95")
                  +     +return(url)
                  +     +     + }
                  Error: unexpected '}' in:
                    "    +return(url)
                  +     + }"
                  > buildURL <- function(siteNumber){
                    + url <- "http://waterservices.usgs.gov/nwis/stat/?format=rdb&sites="
                    + url <- paste0(url,siteNumber,"&statReportType=daily&statTypeCd=p95")
                    + return(url)
                    +  }
                  > readNWISstat("02105900", "00060")
                  Error in +url <- buildURL(siteNumber) : could not find function "+<-"
                  > 