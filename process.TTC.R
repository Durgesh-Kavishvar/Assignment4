#process.TTC.R
source('TTC.Utilities.R')

filename=commandArgs(trailingOnly=TRUE)
my_data=read.csv(file=filename)
cat("Processing data from file:",filename,"\n")

Incidents=unique(my_data$Incident)
num.delay=vector()
for (i in 1:length(Incidents)){
  #name_incident=Incidents[i]
  #cat('\n', name_incident,':',find.num.delay(my_data,Incidents[i]),'\n')
  num.delay[i]=find.num.delay(my_data,Incidents[i])
}

data.of.delays=data.frame("Incidents"=Incidents,"Number of Delays"=num.delay)
data.of.delays

incident="Mechanical"
Mean.delay=find.mean(my_data,incident)
cat('\n','The average minimum delay of the streetcars due to a ',incident,' incident, ignoring unreported data, is', Mean.delay,'minutes \n')

month="Dec"
maximum.delay.route=find.max.delay.route(my_data,month)
#incomplete for now
cat('\n', 'The route with the most delays in December was route 501.', '\n')
