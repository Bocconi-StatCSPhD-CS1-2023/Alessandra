include("hamming.jl")

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
println("The Hamming distance between $(x) and $(a) is $(hammingdist2(x, a))")
println("The Hamming distance between [] and [] is $(hammingdist2([], []))")


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

