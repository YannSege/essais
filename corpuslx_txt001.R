#ben4<- scan ("https://common.rotefadenbuecher.de/uni/public/corpuslx/ben4.txt", what="CHAR",sep="*")
ben4<- scan ("sample002.txt", what="character",sep=" ",allowEscapes = "FALSE")

length(ben4)
head(ben4)
ben4[1:50]
exc2<-grep("(\\bha(be|st|t|ben|bt|tte|ttest|tten|ttet|)\\b|\\gehabt\\b)",ben4)
pat<-c("ha(be|st|t|ben|bt|tte|ttest|tten|ttet)")
exc2
ben4[183]
ben4[exc2]
table(ben4[exc2])
gsub("b","f",ben4)
install.packages("tidyverse")
library(quanteda)
ben5<-paste(ben4,collapse=" ")
ben6<-tokens(corpus(ben5))
tidyverse_packages()
ben6
ben7<-kwic(ben6,pattern="ich",window=4,valuetype = "regex")
#multi: pattern=(phrase("hhh"))
ben7

write_xlsx(ben7,"output001.xlsx")
