module Points

import LinearAlgebra: norm # in this way in order to use the function norm it is sufficient to call norm(p1), after using LinearAlgebra, there is no need to call P.norm()

import Base: show, +, *


mutable struct Point2D{T<:Real} # Float and Int
    x::T
    y::T

    # inner constructor
    function Point2D(a::T, b::T) where T<:Real
        # one may want to add checks
        (isfinite(a) && isfinite(b)) || throw(ArgumentError("non-finite coordinates"))
        return new{T}(a, b) # new is a pseudo function . It needs the type parameter T 
    end

    # short way of writing:
    # function Point2D(a::Float64, b::Float64) = return(a, b)

end

# outer constructor
function Point2D(a,b) # questa viene usata solo quando non si riesce a usare l'inner, cioe' quando a e b sono di tipo diverso (es, a Int, b Float)
    return Point2D(convert(Float64, a), convert(Float64, b))
end

# I can add a method
Point2D() = Point2D(0.0, 0.0) # default is origin

norm(p::Point2D) = sqrt(p.x^2 + p.y^2)

# utility
# we want to overload print. print calls show --> we overload show 
show(io::IO, p::Point2D) = print(io, "Point2D(x=$(p.x), y=$(p.y))")


# overload sum
+(p1::Point2D, p2::Point2D) = Point2D(p1.x + p2.x, p1.y + p2.y)

# overload multiplication by a scalar
*(a::Number, p::Point2D) = Point2D(a * p.x, a * p.y)

end #module points



