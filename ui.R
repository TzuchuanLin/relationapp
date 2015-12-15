LCdat<- read.csv("LCdat.csv", stringsAsFactors = F)
library(shiny)
mat1<-as.data.frame.matrix(table(LCdat$Referred.To,LCdat$Referred.By))
shinyUI(fluidPage(
  titlePanel(title=h4("The source of referral")),
  sidebarPanel
  (selectInput("mat1", "Select the orgnization that gives referral:",
               choices=colnames(mat1))),
  mainPanel(plotOutput("Plot1") )
  
)
)

