#12054.item XML schemes
#20220304(13.23)
#hux2022 sprichworttest charite
#
#steps:
#1. build musteritems in https://soscisurvey.de
#1.1 2 items using kontext, question, mc test 6 options
#2. export template to .xml
#3.1 task: enable modification of template for reimport new question set into platform by importing new questions from csv-table where the remaining 62 items are stored
#with kontext, question and 6 options
#3.2 
#import data
#xmlschema
<<<<<<< HEAD
library(xml2)
=======
#install.packages("xml2")
library(xml2)
#library(Hmisc)
>>>>>>> b7a69c006458cb5851efb5d13599180794b81eb0
#clowess()
#download_xml("https://github.com/esteeschwarz/12431_hux2021-appendix/raw/12057_VS/hux2022/proverbs/package_hux2022_fragen_templateB_2022-02-04.xml","template.xml")
#getRS()
#getRS(guser="esteeschwarz",grepo="essais",gdir="main")
#getRs(file=NULL, guser='harrelfe', grepo='rscripts', gdir='raw/master',
 #     dir=NULL, browse=c('local', 'browser'), cats=FALSE,
  #    put=c('rstudio', 'source'))
#download.file("https://github.com/esteeschwarz/12431_hux2021-appendix/raw/12057_VS/hux2022/proverbs/items/GR1/context2022_items_GR01.csv","items.csv")
scheme<-read_xml("https://github.com/esteeschwarz/12431_hux2021-appendix/raw/12057_VS/hux2022/proverbs/package_hux2022_fragen_templateB_2022-02-04.xml")
items<-read.csv("https://github.com/esteeschwarz/12431_hux2021-appendix/raw/12057_VS/hux2022/proverbs/items/GR1/context2022_items_GR01.csv",skip=1)
xml_text(scheme)
#library(tidyverse)
#print(a1<-xml_text(xml_node(scheme,8)))
#html_element()
#xml_name(scheme)
#xml_attr.xml_node(scheme,lead)
#xml_attrs(scheme)
children1<-(xml_children(xml_children(xml_children(xml_contents(scheme)))))
children2<-(xml_children(xml_children(xml_children(xml_children(xml_contents(scheme))))))
children0<-(xml_children(xml_children(xml_contents(scheme))))
children3<-(xml_children(xml_contents(scheme)))

#a1_cases<-(xml_text(xml_children(xml_children(xml_children(xml_children(xml_contents(scheme)))))))
#a1<-(xml_text(xml_children(xml_children(xml_children(xml_contents(scheme))))))

a1<-antworten<-(xml_text(children1))
items_complete<-a0<-(xml_text(children0))
print (a0)
print (a1)


items3<-a3<-(xml_text(children3))

a2<-xml_text(scheme,2)
#a2<-xml_text(children0[[3]])
#modify
#a1[7]<-"testing" #works
#4 now try append rows
#4.1  first compare csv data with xml fields
item01<-items$target[1]
print(item01)
#try change content
item01<-items$frage[1]
item_mod<-"warum gerad hunde?"
items$frage[1]<-item_mod
item01<-items$frage[1]
print(item01)
#display question in xml
print(a0[7])
#regular: 1+15=item02 start, 14positions per item, frage auf pos 6
#1+15 = 1+ 2*6 + y
#001: 1+1*14-  (6=14-x)
#formula to adress question: 1(first row) + itemnr*2*7-8
### > (a0[1+(1*2)*7-8])
print(a0[1+(1*2)*7-8])

##4.2 append in a0 itemnr, question + kontext
##4.3 append in a1 questions * 2

print(a0)
print(a1)
###4.2.1
#create new array with modifiying values
#get values of csv
newitem<-c()
itx<-newitemwitch<-3
newitem[1]<-items$item[itx]
newitem[2]<-"select"
newitem[3]<-items$kontext[itx]
newitem[4]<-"Weisen Sie der Frage die richtige Antwort zu."
newitem[5]<-"right"
newitem[6]<-items$frage[itx]
newitem[7]<-"default"

newopt<-c()
newopt[1]<-itx
newopt[2]<-itx
newopt[3]<-items$A1.[itx]
newopt[4]<-11
newopt[5]<-items$A2[itx]
newopt[6]<-22
newopt[7]<-items$A3[itx]
newopt[8]<-33
newopt[9]<-items$A4[itx]
newopt[10]<-44
newopt[11]<-items$A5[itx]
newopt[12]<-55
newopt[13]<-items$A6[itx]
newopt[14]<-66

#newitem[8]<-newopt[4]

#print(newscheme_top[38])

print(newitem)
print(newopt)
#####
itemx<-c()
itemx[1]<-"item"
itemx[2]<-itx
print (itemx)

##4.2.2 append newitem
newscheme0<-a0
lscheme0<-length(a0)
#newscheme_top<-append (newscheme0,newitem,after=lscheme0)
#print(newscheme_top)
newscheme1<-a1
lscheme1<-length(a1)
newscheme_opt<- append (newscheme1,newopt,after=lscheme1)
print(newscheme_opt)

newscheme_0<-children0
newscheme1<-children1
#get positions within xml
print(xml_text(children1[[28]]))
print(xml_text(children1))
<<<<<<< HEAD
newscheme1[[27]]<-"weil ich keine ahnung habe"
print(xml_text(newscheme1[28]))

write_xml(sroot,"scheme_essai.xml")
#writes, but no changes


xml_child(sroot$doc)
pos0<-

  
  sroot<-scheme
pos0s<-xml_children(xml_children(sroot))
pos00<-xml_children(sroot)
print (pos0s)  
print (pos00)
posm<-xml_children(xml_children(sroot))
print(posm)
=======
#newscheme1[[27]]<-"weil ich keine ahnung habe"
#print(xml_text(newscheme1[28]))

sroot<-scheme

####write_xml(sroot,"scheme_essai.xml")
#writes, but no changes


#xml_child(sroot$doc)

sroot<-scheme
>>>>>>> b7a69c006458cb5851efb5d13599180794b81eb0
#val<-"text>because"
val<-"text" #tag
pos<-"dummy" #text within tags
#print(xml_chsroot[8])
#children 3, replace works but content shit
#print(xml_children(xml_children(xml_children(xml_children(sroot))))[19[1]])
###xml_replace(xml_children(xml_children(xml_children(xml_children(sroot))))[29], val, pos)
#i cant get replacement without / at the end of string... try vector
#works. with first tag, then text within tag
print(xml_children(xml_children(xml_children(xml_children(sroot))))[28])
print(xml_children(xml_children(xml_children(xml_children(sroot)))))
print(xml_children(xml_children(xml_children(sroot))))

#think to replicate the whole from root?


pos1<-xml_children(xml_children(xml_children(sroot)))
print(pos1)
#vector geht bis 28
#now try append after usage: set, value, position
xml_add_parent(xml_children(xml_children(xml_children(xml_children(sroot)))), val, .where="after")


xml_add_sibling(pos00, pos0s)
print(pos0s[6])

 xml_add_sibling(xml_children(xml_children(xml_children(sroot))), pos1, .where="after")
 pos1[62]
print(xml_children(xml_children(xml_children(xml_children(sroot)))))
print(xml_children(sroot)[2])

print(xml_attr(sroot,"character",ns="section"))
print(sroot$doc)

xml_replace(newscheme1[28],.value="BOUNCE")
=======
pos1<-xml_children(sroot)
pos2<-xml_children(xml_children(sroot))
pos3<-xml_children(xml_children(xml_children(sroot)))
#vector geht bis 28
#now try append after usage: set, value, position
####xml_add_parent(xml_children(xml_children(xml_children(xml_children(sroot)))), val, .where="after")
###xml_add_child(xml_children(xml_children(sroot)), pos1, .where="after")
print("append essai")
print(pos2)
print(xml_text(pos2))
#pos0
 xml_add_child(pos3, pos2[4], .where="after")
# pos1[62]
#print(xml_children(xml_children(xml_children(xml_children(sroot)))))
#print(xml_children(sroot)[2])
print("after append")
print(pos2)
#print(pos2[6])
print(xml_text(pos2))
#print(xml_attr(sroot,"character",ns="section"))
#print(sroot$doc)

###xml_replace(newscheme1[28],.value="BOUNCE")

############################################# from here earlier state #######################
















#qscheme <- read.csv("qscheme.csv", sep=";")


#itemtabelle
#templ <- read.csv("https://github.com/esteeschwarz/12431_hux2021-appendix/blob/master/hux2022/proverbs/12054_qscheme/template.csv", sep=";")

#per item:
#2 leerzeilen
#6 *2 optionen
#14 zeilen
#3,4 A1
#5,6 A2

# 
# 
# check1<-2+6*2
# print(qscheme$answer[1:14])
# qscheme$answer[13]<-"test change"
# print(qscheme$answer[1:14])
# #works, restor
# qscheme$answer[13]<-qscheme$answer[14]
# print(qscheme$answer[1:14])
# #works.
# ## assign template
# qscheme$answer[13]<-template$A5[1]
# print(qscheme$answer[1:14])
# #works
# opt1<-1
# opt2<-opt1*2
# #loop
# 
# for (x in opt1:length(qscheme$itemid)) {
#   optv<-opt1*x
#   optv1<-optv/14
#   print(optv1)
#   #wenn x ein vielfaches von 14 ist
# 
#   }
# 
# 14*64
# #896
# 64/4
# 
# questid<-c(1:optv1)
# opv1<-questid
# #now double each
# questid2<-c(0,0,opv1[1],opv1[1],opv1[2],opv1[2],opv1[3],opv1[3],opv1[4],opv1[4],opv1[5],opv1[5],opv1[6],opv1[6])
# print(questid2)
# #now loop
# #16 item, 4 gruppen, 2*(6 optionen+ 1 leerzeile)
# 16*7*2*4 #896
# 896/14 #64 items
# #x2 loop formel:
# 768/6 #128
# 64*2
# 128*6
# 16*6*2
# 
# #x2 in 6er schritten
# 16*6*2*4 #768
# x2f<-c(1:128)
# x2f2<-x2f*6
# x2f3<-
# #for(x3 in 1){
# rr<-(function(x,y){z<-x^2+y^2;x+y+z})(0:7,2)
# norm<-function(x) x*6
# x2f3<-c(norm(1:64))
# print (x2f3)  
#   fill<-  function(id5){
# id0<-c()      
# id1<-c()      
# 
#     #append(id0, 1:5, after =3)
# for (x1 in 1){
# #x2<-x1+6
#   #inner loop 1
# for (x in x2f2) {
# questid3<-c(0,0,x,x,x+1,x+1,x+2,x+2,x+3,x+3,x+4,x+4,x+5,x+5)
# print(questid3)
# id1<-append(id0,questid3)
# }
# #  print(questid3)
#   #return this to vector!
# #id0<-c()  
# #id2<-append(id1,questid3)
# #questid4<-c(questid3[1]:length(questid3))  
# }
# }
# print(id0)
# questid4
# 
# print(questid3)
# print(questid4)
# 
# #let two rows empty, then put numbers 1-6 each twice in the following rows.
# #then let again 2 rwos empty, put numbers 7-12 and so on
# 
# 
# 
# 
# 
# 
# #A1_1<-c(opt0*3,opt0*4)
# #A1_2<-c(opt1*5,opt1*6)
# opv1[2]
# #created row with length of options complete
# check2<-optv/16/4 #16 items in 4 gruppen
# check3<-check2/check1  #should be 1
# 
# 
# # how to fill in questionid row 29-42 with two empty + 2*6
# 
# print(qscheme$questionid[29:42])
# 
# 
# 
