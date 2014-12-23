 # R script for reading Global Innovation Index data

#read data. csv file is a modifyed version of XLS file shared with me
# by Cornell. It is not very clean or organized.
    innov <- read.csv("./GlobalInnovationIndex2014.csv",as.is=c(1:2,6:9))
    
# drop unused variables
    innov <- innov[,c(-2,-4,-6:-9,-11:-13,-15:-17)]

# rename variables
    names(innov) <- c("Country","Population","GDPperCap","Rank","Score")
    
# create a vector for all countries, sorted by country name, for our select list in shiny
    allCtrys <- sort(innov[ , "Country"])

# that's it!
