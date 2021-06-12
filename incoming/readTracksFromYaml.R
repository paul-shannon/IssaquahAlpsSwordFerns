library(yaml)
library(rgdal)

xs <- yaml.load(readLines("../map/tracks.yaml"))$tracks

parse.yaml <- function(x){
   name <- x$name
   color <- x$color
   data.frame(name=name, color=color, lat=I(list(x$lat)))
   }

tbl.tracks <- do.call(rbind, lapply(xs, parse.yaml))

tbl.tracks



