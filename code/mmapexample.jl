import LinRegOutliers 
import Mmap

n = 10000

xio = open("/tmp/X.dat", "w+")
yio = open("/tmp/y.dat", "w+")

X = Mmap.mmap(xio, Matrix{Float64}, (n, 2))
y = Mmap.mmap(yio, Vector{Float64}, n)

for i in 1:n
    X[i, 1] = 1.0
    X[i, 2] = rand()
    y[i] = 5.0 .+ 5.0 * X[i, 2] .+ randn()
end 

result = LinRegOutliers.lts(X, y)

println(result["betas"])


close.([xio, yio])
