using CSV, DataFrames

mydata = CSV.read("data.csv", delim = ";", DataFrame)

show(mydata)



