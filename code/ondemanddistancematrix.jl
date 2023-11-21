struct OnDemandDistanceMatrix <: AbstractMatrix{Float64}
    rawdata::Matrix
end

function euclidean(u::Vector, v::Vector)::Real
    d = 0.0
    for i in 1:length(u)
        d += (u[i] - v[i])^2.0
    end 
    return sqrt(d)
end 

function Base.getindex(odm::OnDemandDistanceMatrix, i::Int, j::Int)::Float64
    return euclidean(odm.rawdata[i, :], odm.rawdata[j, :])
end 

function Base.size(odm::OnDemandDistanceMatrix)
    n, _ = size(odm.rawdata)
    return (n, n)
end 



# Example 
data = Float64[1 2; 0 5; 1 2]
d = OnDemandDistanceMatrix(data)
println(d[1, 3])


