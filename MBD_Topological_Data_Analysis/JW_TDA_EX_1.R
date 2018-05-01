
## R code ##
#install.packages('TDA',repos = 'http://cran.r-project.org') ## This also installs igraph
#install.packages('TDAmapper',repos = 'http://cran.r-project.org')
#install.packages('rgl',repos = 'http://cran.r-project.org') ## for plot3d function
#install.packages('doParallel',repos = 'http://cran.r-project.org') 
## End of R code ##

  
## R code ##
## Library code
suppressMessages(suppressWarnings(library(TDA)))
suppressMessages(suppressWarnings(library(igraph)))
suppressMessages(suppressWarnings(library(ggplot2)))
suppressMessages(suppressWarnings(library(rgl)))
suppressMessages(suppressWarnings(library(FactoMineR)))
suppressMessages(suppressWarnings(library(locfit)))
suppressMessages(suppressWarnings(library(ks)))
suppressMessages(suppressWarnings(library(doParallel)))
suppressMessages(suppressWarnings(library(caTools)))
suppressMessages(suppressWarnings(library(boot)))
suppressMessages(suppressWarnings(library(devtools)))
## End Library code

circleSample <- circleUnif(n = 400, r = 1)
plot(circleSample)

suppressMessages(suppressWarnings(library(rgl)))
torusSample <- torusUnif(n = 10000, a = 1.8, c = 5)
plot3d(torusSample)

suppressMessages(suppressWarnings(library(igraph)))
g1 <- graph( edges=c(1,2, 2,3, 3, 1), n=10 )
plot(g1)

suppressMessages(suppressWarnings(library(TDAmapper)))
m1 <- mapper1D(
  distance_matrix = dist(data.frame( x=2*cos(0.5*(1:100)), 
  y=sin(1:100) )), 
  filter_values = 2*cos(0.5*(1:100)),
  num_intervals = 10,
  percent_overlap = 50,
  num_bins_when_clustering = 10)

suppressMessages(suppressWarnings(library(igraph)))
g1 <- graph.adjacency(m1$adjacency, mode="undirected")
plot(g1, layout = layout.auto(g1) )
## End of R code ##


