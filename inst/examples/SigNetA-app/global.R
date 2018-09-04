library(DT)
library(shiny)
library(shinyjs)
library(DLBCL)
library(BioNet)
library(igraph)
library(CLEAN)
library(CLEAN.Hs)
library(networkD3)
library(SigNetA)
library(visNetwork)
#library(dmGWAS) #version 2.4
library(RCurl)
library(devtools)
library(roxygen2)
data(interactome)

document()

loadedFile<<-c()  #global File input handler
netData<<-c() #global network data input handler
netcon<<-c() #connected from,to in network data
nodeGO<<-NULL #visobject node  with GO terms in it
edgeGO<<-NULL #visobject edge with GO terms in it

##Load STRING Data##
load(system.file("extdata", "weightedGraphStringPPI_10.rda", package = "SigNetA")) #STRING PPI network
load(system.file("extdata", "stringToEntrezDetailed.Rdata", package = "SigNetA")) #edge data
load(system.file("extdata", "lincscp_1.rda", package = "SigNetA"))

##END..Load STRING Data##



