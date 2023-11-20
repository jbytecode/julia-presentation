@info "Loading packages"
using CUDA, BenchmarkTools 

const n = 1_000_000 
const five = Float32(5.0)

x = ones(Float32, n)
y = ones(Float32, n)

@info "CPU: "
@btime y .= five .+ five .* x;

xcuda = CUDA.ones(Float32, n)
ycuda = CUDA.ones(Float32, n)

@info "GPU: "
@btime CUDA.@sync ycuda .= five .+ five .* xcuda; 

println("Ok")
