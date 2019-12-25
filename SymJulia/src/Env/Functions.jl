function in(x::Symbol, e::Env)
    for s in getindex.(e.def, 1)
        if x == s
            return true
        end
    end
    return false
end

function push!(env::Env, newVar::Tuple{Symbol, <:MyExpr})
    push!(env.def, newVar)
end

struct AlreadyDefined <: Exception
    x::String
end
