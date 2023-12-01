struct Point2D 
    x::Float64
    y::Float64
end 

function Base.:+(p::Point2D, other::Point2D)::Point2D
    Point2D(p.x + other.x, p.y + other.y)
end 


function Base.:*(p::Point2D, other::Point2D)::Float64
    return p.x * other.x + p.y * other.x
end


Point2D(1, 2) + Point2D(5, 6) |> display


