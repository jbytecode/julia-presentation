using LinearAlgebra

x = [1, 2, 3, 4, 5]

y = [2, 5, 5, 8, 12]

X = hcat(ones(5), x)

betahats = inv(X'X)X'y

println(betahats)

