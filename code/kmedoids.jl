using Clustering
using Plots 
using Random
using Distances

rng = MersenneTwister(20231201)

data1 = rand(rng, 10, 2)
data2 = rand(rng, 10, 2) .+ 2.0

data = vcat(data1, data2)

cols = vcat(repeat(["blue"], 10), repeat(["green"], 10))
plt = scatter(data[:, 1], data[:, 2], legend = nothing, color = cols, markersize = 6)
xlabel!("x")
ylabel!("y")

dist = pairwise(euclidean, eachrow(data))
result = kmedoids(dist, 2)


centers = data[result.medoids, :];
scatter!(centers[:, 1], centers[:, 2], color = "red", markersize = 8)
