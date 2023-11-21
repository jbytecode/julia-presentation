using QuadGK

function f(x)
    return 1/sqrt(2pi) * exp(-0.5x^2)
end 

quadgk(f, -1.0, 1.0)