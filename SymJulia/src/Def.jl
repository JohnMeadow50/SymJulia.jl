macro def(x::Expr)
    if x.head == :(=)
        if typeof(x.args[1]) == Symbol
            definevalue(x)
        elseif isFunctiondefinition(x)
            definefunction(x)
        end
    else
        println("not defining a Symbol")
    end
end

function isFunctiondefinition(x::Expr)
    if x.args[1] == :call
        
function isSymboldefinition(x::Expr)
    return typeof(x.args[1]) == Symbol
end

function definevalue(expr::Expr, env::Env = Sheat)
    x, val = expr.args
    if x in env
        throw(AlreadyDefined(string(x)))
    else
        tp = (x, val)
        push!(env, tp)
    end
end

function defineFunction(expr::Expr, env::Env = Sheat)
    head, defExpr = x.args
    name = head.args[1]
    args = convert(Array{Symbol, 1}, head.args[2:end])
    
    f = MyFunction(args, defExpr)
    if name in env
        throw(AlreadyDefined(string(x)))
    else
        tp = (name, f)
        push!(env, tp)
    end
end
