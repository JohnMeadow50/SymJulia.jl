function convert(::Type{Value}, t::T) where T <: Number
    return Value(t)
end

function ToMyExpr(x::Number)
    return Value(x)
end
