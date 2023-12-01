using Base.Threads 

results = zeros(10)

@threads for i in 1:10
    result[i] = dosomethingwith(i)
end 

