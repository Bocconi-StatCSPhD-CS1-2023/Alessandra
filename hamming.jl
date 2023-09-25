

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


function hammingdist2(x::AbstractArray, y::AbstractArray) 
    lx = length(x) 
    lx != length(y) && throw(DimensionMismatch("first array has length $(lx) which does not match the length of the second, $(length(y))."))

    if lx == 0
        return 0
    end

    # comprehension
    v = [i1 != i2 for (i1, i2) in zip(x, y)] # is creating a vector of booleans 0 and 1
    return sum(v)
end


function hammingdist3(x::AbstractArray, y::AbstractArray) 
    lx = length(x) 
    lx != length(y) && throw(DimensionMismatch("first array has length $(lx) which does not match the length of the second, $(length(y))."))

    if lx == 0
        return 0
    end

    # generator
    g = (i1 != i2 for (i1, i2) in zip(x, y)) 
    return sum(g)
end


function hammingdist4(x::AbstractArray, y::AbstractArray) 
    lx = length(x) 
    lx != length(y) && throw(DimensionMismatch("first array has length $(lx) which does not match the length of the second, $(length(y))."))

    if lx == 0
        return 0
    end

    # count ???
    # count(t -> t[1] != t[2], zip(x, y))
    
end

