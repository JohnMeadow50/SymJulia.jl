abstract type AbstractValue{T<:Number} <: MyExpr end

mutable struct Value{T} <: AbstractValue{T}
    val::T
end

mutable struct CombinedValue <: AbstractValue{Number}
    expr::Expr
end

mutable struct FCall <: AbstractValue{Float64}
    f::Symbol
    args::Array{<:AbstractValue, 1}
    function FCall(sym::Symbol, args::Array{<:AbstractValue, 1})
        return new(sym, args)
    end
    function FCall(sym::Symbol, args::Array{<:Number, 1})
        return new(sym, convert.(Value, args))
    end
end
