setwd( "/Users/tzuchuan/Desktop/relationapp" )
LCdat<- read.csv("LCdat.csv", stringsAsFactors = F)
library(shiny)
  mat1<-as.data.frame.matrix(table(LCdat$Referred.To,LCdat$Referred.By))
  server<-function(input,output,sessions) {(
  output$Plot1<- renderPlot({
    par(mar=c(5.1,8.1,4.1,2.1))
    barplot(mat1[,input$mat1],main="Orgnizations receiving referrals",
            xlim=c(0,7),ylim=c(-2,25), col="steel blue",names.arg=names(mat1),cex.names =0.8)
   })
  )}
