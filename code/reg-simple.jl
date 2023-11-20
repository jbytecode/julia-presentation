x = [1, 2, 3, 4, 5]

y = [2, 5, 5, 8, 12]

betahats = hcat(ones(5), x) \ y 

println(betahats)

