#TTC.Utilities.R

my_data=read.csv("ttc-streetcar-delay-data-2014.csv")

find.sum.delay=function(my_data) {

  Incidents=unique(my_data$Incident)
  mindelay=my_data[,7]

  for (i in 1:length(Incidents)){
    sumdelay[i]=sum(as.numeric(mindelay[my_data$Incident==Incidents[i]]),na.rm=TRUE)
  }
  return(sumdelay)
}

find.mean.mech=function(my_data){
  Incidents=unique(my_data$Incident)
  mindelay=my_data[,7]
  new.incidents=as.character(Incidents)

  meandelay= mean(as.numeric(mindelay[my_data$Incident==Incidents[which(new.incidents=="Mechanical")]]),na.rm=TRUE)
  return(meandelay)
}

find.max.in.dec=function(my_data){
  delay=delay[substr(dates,4,6)=="Dec"]
  route=route[delay==max(delay[!is.na(delay)])]
  return(route)
}
