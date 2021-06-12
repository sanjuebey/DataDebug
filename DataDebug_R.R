setwd("C:/sje_ds")
oldeng_df<-read.csv("https://raw.githubusercontent.com/marahim20/DataDebug2021/main/DATAdebug.csv")
oldeng <- oldeng_df

str(oldeng)
summary(oldeng)
class(oldeng)
nrow(oldeng)
ncol(oldeng)
head(oldeng)
tail(oldeng)

table(oldeng$Death.Count)
oldeng$Death.Count[which(is.na(oldeng$Death.Count))] <- NA

#oldeng <- oldeng_df[-which(apply(oldeng_df,1,function(x)all(is.na(x)))),]
#oldeng <- oldeng[!apply(data == "", 1, all),]

#is.null(oldeng)

which(oldeng$PIN.Code == '')
oldeng <- oldeng[-c(5), ]
oldeng <- oldeng[-c(15335), ]
oldeng <- oldeng[-c(20937), ]
oldeng <- oldeng[-c(33465), ]
oldeng <- oldeng[-c(46000), ]
oldeng <- oldeng[-c(47623), ]
oldeng <- oldeng[-c(77989), ]
oldeng <- oldeng[-c(95087), ]

which(oldeng$PIN.Code == '')
summary(oldeng)

which(oldeng$Death.Count == 'nil')

str(oldeng$Week)
summary(oldeng$Week)

which(oldeng$Week == 'one')
oldeng$Week[25] <- "1"

which(oldeng$Week == 'One')
oldeng$Week[4] <- "1"

which(oldeng$Week == 'two')
oldeng$Week[4237] <- "2"

which(oldeng$Week == 'Two')
oldeng$Week[4240] <- "2"

summary(oldeng$Death.Count)
str(oldeng$Death.Count)
which(is.numeric(oldeng$Death.Count))

which(is.na(as.numeric(as.character(oldeng[[1]]))))

deathcol <- as.numeric(oldeng$Death.Count)

sum(deathcol,na.rm = TRUE)

which(oldeng$Cause.of.death == 'Swine Flu')
summary(oldeng$Cause.of.death)

library("ggplot2")
qplot(oldeng$Cause.of.death,oldeng$Death.Count)


