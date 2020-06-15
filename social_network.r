#to exploit data in social network, we shall be using the igraph package. therefore, we call it as below.

library("igraph")

#code to read csv data from storage

mydata<-read.csv(file.choose())
network<-graph.data.frame(mydata,directed =FALSE)

# to show the composition of the network in an undirected manner

plot(network, directed<-F)

# to show the composition of the network in a directed manner

plot(network, directed<-T)

#to show degree in a network in different modes.

degree(network, mode='all')

#to display the maximum degree in a network when the mode is "all"

max(degree(network, mode='all'))

#to display degree sorted from the smallest value to the biggest for the "all" mode

sort(degree(network, mode='all'))

#to show degree sorted from the smallest value to the largest value in the "in" mode.

sort(degree(network, mode='in'))

#to show degree sorted from the smallest value to the largest value in the "out" mode.

sort(degree(network, mode='out'))

#to exploit closeness in a network

closeness(network)

#to display closeness in a sorted manner.

sort(closeness(network)) 

#to show the maximum values of closeness

max(closeness(network))

#to show the minimum values of closeness

min(closeness(network)) 

# to exploit betweenness in a network.

betweenness(network)

 # to display betweenness in a sorted manner

sort(betweenness(network))

#to display the maximum value of betweenness

max(betweenness(network))

#to exploit eigen vectors in a network

eigen_centrality(network)




