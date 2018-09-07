library(DT)
library(shiny)
library(shinyjs)
library(DLBCL)
library(BioNet)
library(igraph)
library(CLEAN)
library(CLEAN.Hs)

library(SigNetA)
library(visNetwork)
#library(dmGWAS) #version 2.4
library(RCurl)
library(devtools)
#library(roxygen2)
data(interactome)

#document()

loadedFile<<-c()  #global File input handler
netData<<-c() #global network data input handler
netcon<<-c() #connected from,to in network data
nodeGO<<-NULL #visobject node  with GO terms in it
edgeGO<<-NULL #visobject edge with GO terms in it

##Load STRING Data##


# load(url("http://www.ilincs.org/tmp/signeta/weightedGraphStringPPI_10.rda")) #STRING PPI network
# load(url("http://www.ilincs.org/tmp/signeta/stringToEntrezDetailed.Rdata")) #edge data
# load( url("http://www.ilincs.org/tmp/signeta/lincscp_1.rda"))

load("/tmp/datasets/weightedGraphStringPPI_10.rda") #STRING PPI network
load("/tmp/datasets/stringToEntrezDetailed.Rdata") #edge data
load( "/tmp/datasets/lincscp_1.rda")


##END..Load STRING Data##



