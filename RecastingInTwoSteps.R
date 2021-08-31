library(reshape2)
library(reshape)
library(dplyr)

Name = c("Senthil","Senthil","Sam","Sam")
Month = c("Jan","Feb","Jan","Feb")
BS = c(141.2,139.3,135.2,160.1)
BP = c(90,78,80,81)

df = data.frame(Name,Month,BS,BP)

print(df)

melt.df = melt(df,id.vars=c("Name","Month"),
               measure.vars=c("BS","BP"))

print(melt.df)

cast.df = dcast(melt.df, variable+Month ~ Name, value.var="value")

recast.df = recast(df, variable+Month ~ Name, id.var=c("Name","Month"))


mutated.df = mutate(df, log_BP = log(BP))
