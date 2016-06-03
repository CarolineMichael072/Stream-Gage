> library(waterData)
> q02093206 <- importDVs("02093206", code="00060", stat="00003", sdate="1999-09-07", edate="1999-09-25")
Error in UseMethod("xmlName", node) : 
  no applicable method for 'xmlName' applied to an object of class "NULL"
> q02093206 <- importDVs("02093206", code="00060", stat="00003", sdate="1999-09-07", edate="1999-09-25")
Error in UseMethod("xmlName", node) : 
  no applicable method for 'xmlName' applied to an object of class "NULL"
> q02093206 <- importDVs(02093206, code="00060", stat="00003", sdate="1999-09-07", edate="1999-09-25")
Error in importDVs(2093206, code = "00060", stat = "00003", sdate = "1999-09-07",  : 
                     staid needs to have quotes around it
                   > q02093206 <- importDVs("02093206", code="00060", stat="00003", sdate="1999-09-07", edate="1999-09-25")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q02093000 <- importDVs("02093000", code="00060", stat="00003", sdate="1999-09-07", edate="1999-09-25")
                   > q02092554 <- importDVs("02092554", code="00060", stat="00003", sdate="1999-09-07", edate="1999-09-25")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q02093000
                   staid   val      dates qualcode
                   1  02093000   488 1999-09-07        A
                   2  02093000   415 1999-09-08        A
                   3  02093000   322 1999-09-09        A
                   4  02093000   567 1999-09-10        A
                   5  02093000   576 1999-09-11        A
                   6  02093000   335 1999-09-12        A
                   7  02093000   183 1999-09-13        A
                   8  02093000   215 1999-09-14        A
                   9  02093000   711 1999-09-15        A
                   10 02093000 10100 1999-09-16        A
                   11 02093000  7370 1999-09-17        A
                   12 02093000  3040 1999-09-18        A
                   13 02093000  1680 1999-09-19        A
                   14 02093000  1110 1999-09-20        A
                   15 02093000   854 1999-09-21        A
                   16 02093000   846 1999-09-22        A
                   17 02093000   755 1999-09-23        A
                   18 02093000   560 1999-09-24        A
                   19 02093000   415 1999-09-25        A
                   > JacksonNC <- q02093000
                   > JacksonNC <- plotParam(JacksonNC.data)
                   Error in plotParam(JacksonNC.data) : object 'JacksonNC.data' not found
                   > JacksonNC <- plotParam(JacksonNC)
                   > print(JacksonNCPlot)
                   Error in print(JacksonNCPlot) : object 'JacksonNCPlot' not found
                   > JacksonNC <- 02093000
                   > JacksonNC <- q02093000
                   > JacksonNc.Plot <- plotParam(JacksonNC)
                   > print(JacksonNc.Plot)
                   > q02092500 <- importDVs("02092500", code="00060", stat="00003", sdate="1999-09-07", edate="1999-09-25")
                   > NTrentonNC <- q02092500
                   > NTrentonNC.Plot <- plotParam(NTrentonNC)
                   > print(NTrentonNC.Plot)
                   > q0209205053 <- importDVs("0209205053", code="00060", stat="00003", sdate="1999-09-07", edate="1999-09-25")
                   > StreetsFerryNC <- q0209205053
                   > StreetsFerryNc.Plot <- plotParam(StreetsFerryNC)
                   > print(StreetsFerryNc.Plot)
                   > q0209205053 <- importDVs("0209205053", code="00060", stat="00003", sdate="1999-09-01", edate="1999-09-30")
                   > StreetsFerryNC <- q0209205053
                   > StreetsFerryNC.Plot <- plotParam(StreetsFerryNC)
                   > print(StreetsFerryNc.Plot)
                   > print(StreetsFerryNc.Plot)
                   > q02091814 <- importDVs("02091814", code="00060", stat="00003", sdate="1999-09-07", edate="1999-09-25")
                   > BarnwellNC <- q02091814
                   > BarnwellNC.Plot <- plotParam(BarwellNC)
                   Error in plotParam(BarwellNC) : object 'BarwellNC' not found
                   > BarnwellNC.Plot <- plotParam(BarnwellNC)
                   > print(BarnwellNC.Plot)
                   > q02091814 <- importDVs("02091814", code="00060", stat="00003", sdate="1999-09-01", edate="1999-09-30")
                   > NewBarnwellNC <- q02091814
                   > NewBarwellNC.Plot <- plotParam(NewBarnwellNC)
                   > print(NewBarwellNC.Plot)
                   > q02091814 <- importDVs("02091814", code="00060", stat="00003", sdate="1999-09-01", edate="1999-10-10")
                   > NewerBarnwellNC <- q02091814
                   > NewerBarnwellNC.Plot <- plotParam(NewerBarnwellNC)
                   > print(NewerBarnwellNC.Plot)
                   > q02091814 <- importDVs("02091814", code="00060", stat="00003", sdate="1999-09-01", edate="1999-10-31")
                   > q02091814 <- importDVs("02091814", code="00060", stat="00003", sdate="1999-09-01", edate="1999-11-10")
                   > ABarnwellNC <- q02091814
                   > ABarnwellNC.Plot <- plotParam(ABarnwellNC)
                   > print(ABarnwellNC.Plot)
                   > q02091500 <- importDVs("02091500", code="00060", stat="00003", sdate="1999-09-07", edate="1999-9-25")
                   > HookertonNC <- q02091500
                   > HookertonNC.Plot <- plotParam(HookertonNC)
                   > print(HookertonNC.Plot)
                   > q02091500 <- importDVs("02091500", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-01")
                   > AHookertonNC.Plot <- plotParam(q02091500)
                   > print(AHookertonNC.Plot)
                   > q02084472 <- importDVs("02084472", code="00060", stat="00003", sdate="1999-09-07", edate="1999-9-25")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q02084000 <- importDVs("02084000", code="00060", stat="00003", sdate="1999-09-07", edate="1999-9-25")
                   > GreenvilleNC.Plot <- plotParam(q02084000)
                   > print(GreenvilleNC.Plot)
                   > q02084000 <- importDVs("02084000", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   > AGreenvilleNC.Plot <- plotParam(q02084000)
                   > print(AGreenvilleNC.Plot)
                   SimpsonNC.Plot <- plotParam(q02084160)
                   > print(SimpsonNC.Plot)
                   > q02081028 <- importDVs("02081028", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q02081054 <- importDVs("02081054", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q0204300267 <- importDVs("0204300267", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q02043155 <- importDVs("02043155", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01484812 <- importDVs("01484812", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01484938 <- importDVs("01484938", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01484746 <- importDVs("01484747", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01411390 <- importDVs("01411390", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01411380 <- importDVs("01411380", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01411380 <- importDVs("01411380", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01411355 <- importDVs("01411355", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01411330 <- importDVs("01411330", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01073785 <- importDVs("01073785", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q02093000 <- importDVs("02093000", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   > q01309500 <- importDVs("01309500", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   > MassapequaNY.Plot <- plotParam(q01309500)
                   > print(MassapequaNY.Plot)
                   > q01309500 <- importDVs("01309500", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   > AMassapequaNY.Plot <- plotParam(q01309500)
                   > print(AMassapequaNY.Plot)
                   > q01303500 <- importDVs("01303500", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-31")
                   > q01309500 <- importDVs("01309500", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   > q01303500 <- importDVs("01303500", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   > ColdSprHarborNY.Plot <- plotParam(q01303500)
                   > print(ColdSprHarborNY.Plot)
                   > q01208873 <- importDVs("01208873", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   > FairfieldCT.Plot <- plotParam(q01208873)
                   > print(FairfieldCT.Plot)
                   > q01208736 <- importDVs("01208736", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01196530 <- importDVs("01196530", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01192704 <- importDVs("01192704", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   > EastBerlinCT.Plot <- plotParam(q01192704)
                   > print(EastBerlinCT.Plot)
                   > q01190070 <- importDVs("01190070", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01193348 <- importDVs("01193348", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01177000 <- importDVs("01177000", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   > IndianOrchardMA.Plot <- plotParam(q01177000)
                   > print(IndianOrchardMA.Plot)
                   > q01110000 <- importDVs("01110000", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   > NorthGraftonMA.Plot <- plotParam(q01110000)
                   > print(NorthGraftonMA.Plot)
                   > q01100000 <- importDVs("01100000", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   > LowellMA.Plot <- plotParam(q01100000)
                   > print(LowellMA.Plot)
                   > q010735562 <- importDVs("010735562", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"
                   > q01073000 <- importDVs("01073000", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   > DurhamNH.Plot <- plotParam(q01073000)
                   > print(DurhamNH.Plot)
                   > q01072658 <- importDVs("01072658", code="00060", stat="00003", sdate="1999-09-07", edate="1999-10-10")
                   Error in UseMethod("xmlName", node) : 
                     no applicable method for 'xmlName' applied to an object of class "NULL"