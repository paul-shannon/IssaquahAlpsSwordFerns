library(rgdal)
geojson.files <- c("swordFernDeclineTigerMountain-20apr2021.geojson",
                   "swordFernDeclineTigerMountain-25apr2021.geojson",
                   "swordFernDeclineTigerMountain.geojson")
for(f in seq_len(length(geojson.files))){
    file <- geojson.files[f]
    printf("-------- file %s", file)
    paths <- rgdal::readOGR(file)
    path.count <- length(paths@lines[[1]]@Lines)
    for(i in seq_len(path.count)){
       path.1 <- paths@lines[[1]]@Lines[[i]]@coords
       lon.vec <- as.numeric(path.1[,1])
       lat.vec <- as.numeric(path.1[,2])
       printf("--- file %d, path %d", f, i)
       # browser()
       printf("lon: [%s]", paste0(lon.vec, collapse=", "))
       printf("lat: [%s]", paste0(lat.vec, collapse=", "))
       #print(lon.vec)
       #print(lat.vec)
       } #  for i
     } # for f
