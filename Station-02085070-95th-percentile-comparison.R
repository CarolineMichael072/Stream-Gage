buildURL <- function(siteNumber){
  url <- "http://waterservices.usgs.gov/nwis/stat/?format=rdb&sites="
  url <- paste0(url,siteNumber,"&statReportType=daily&statTypeCd=p95")
  return(url)
}

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
ptm <- proc.time()
stat.data <- alply(gages.list.out,1,function(x){
  readNWISstat(siteNumber=x$site_no[1],parameterCd="00060")
})

flow.data <- alply(gages.list.out,1,function(x){
  readNWISdv(siteNumber=x$site_no[1],parameterCd="00060",startDate=start.date,endDate=end.date)
})
proc.time()-ptm