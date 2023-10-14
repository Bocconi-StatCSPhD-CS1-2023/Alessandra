module RationalField

import Base: show, +, *

mutable struct Q2{T} <: Real # Z2 numbers are Integer numbers 

    a::Rational{T}
    b::Rational{T}

    function Q2(a::Rational{T}, b::Rational{T}) where T<:Integer
        (isfinite(a) && isfinite(b)) || throw(ArgumentError("non-finite coordinates"))
        return new{T}(a, b)
    end

end

# constructors
Q2() = Q2(convert(Rational, 0), convert(Rational, 0))

function Q2(a::T, b::S) where {T<:Integer, S<:Integer}
    return Q2(convert(Rational, a), convert(Rational, b))
end

function Q2(a::Rational{T}, b::S) where {T<:Integer, S<:Integer}
    return Q2(a, convert(Rational, b))
end

function Q2(a::T, b::Rational{S}) where {T<:Integer, S<:Integer}
    return Q2(convert(Rational, a), b)
end


# Print
show(io::IO, x::Q2{T}) where T = print(io, "Q2{$T}, $(x.a) + $(x.b)*sqrt(2)")


# Arithmetic operations
+(x::Q2, y::Q2) = Q2(x.a + y.a, x.b + y.b)
*(a::T, x::Q2) where T<:Union{Integer, Rational} = Q2(a * x.a, a * x.b)
*(x::Q2, y::Q2) = Q2( (x.a * y.a + 2* x.b * y.b ) , x.a * y.b + x.b * y.a)

end #end module RationalField