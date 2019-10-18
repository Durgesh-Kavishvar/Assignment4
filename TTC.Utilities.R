#TTC.Utilities.R

my_data=read.csv("ttc-streetcar-delay-data-2014.csv")

find.num.delay=function(my_data,incident) {


  mindelay=my_data[,7]
  numdelay=length(na.omit(mindelay[my_data$Incident==incident]))

  #list_of_returns=list(numdelay,Incidents)
  return(numdelay)
}

find.mean=function(my_data,incident){
  Incidents=unique(my_data$Incident)
  mindelay=my_data[,7]
  new.incidents=as.character(Incidents)

  meandelay= mean(as.numeric(mindelay[my_data$Incident==Incidents[which(new.incidents==incident)]]),na.rm=TRUE)
  return(meandelay)
}


find.max.delay.route=function(my_data,month){
  dates=my_data[,1];
  route=my_data[,2];
  min.delay=my_data[,7];
  dec.route=route[substr(dates,4,6)==month];
  dec.delay=min.delay[substr(dates,4,6)==month];
  dec.data=data.frame("dec.route"=dec.route,"dec.delay"=dec.delay);
  sum=xtabs(dec.delay~dec.route,dec.data)
  return(sum)
}
