function hammingdist(x::AbstractArray, y::AbstractArray) 
    lx = length(x) 
    if lx != length(y)
        throw(DimensionMismatch("first array has length $(lx) which does not match the length of the second, $(length(y))."))
    end
    if lx == 0
        return 0
    end
    s = 0
    for i in 1:lx
        if x[i] != y[i]
        s += 1
        end
    end
    return s
end


function hammingdist(a::String, b::String)
    la = length(a) 
    if la != length(b)
        throw(DimensionMismatch("first array has length $(la) which does not match the length of the second, $(length(b))."))
    end
    if la == 0
        return 0
    end
    s = 0
    for i in 1:la
        if a[i] != b[i]
        s += 1
        end
    end
    return s
end


x = [1, 2, 3]
y = [1, 1, 1, 1]
z = [1, 1, 1]
a = [0, 0, 0]

# using LinearAlgebra
# dot(x, y) 
# @which dot(x, y)
# @edit dot(x, y) 

# hammingdist(x, y) # gives the same error as dot(x, y)  

println("The Hamming distance between $(x) and $(x) is $(hammingdist(x, x))")
println("The Hamming distance between $(x) and $(z) is $(hammingdist(x, z))")
println("The Hamming distance between $(x) and $(a) is $(hammingdist(x, a))")
println("The Hamming distance between [] and [] is $(hammingdist([], []))")


# "Hello" == "Hello"
# "Hello" == "World"
# "Hello" == "Hi"
# Here I can also compare strings of different lengths
# @edit ==("Hello", "Hi")

# hammingdist("Hello", "Hi")
println()
println("The Hamming distance between ''Hello'' and ''Hello'' is $(hammingdist("Hello", "Hello"))")
println("The Hamming distance between ''castle'' and ''battle'' is $(hammingdist("castle", "battle"))")
println("The Hamming distance between '' '' and '' '' is $(hammingdist("", ""))")