macro def(x::Expr)
    if x.head == :(=)
        if typeof(x.args[1]) == Symbol
            println("in defining a symbol")
            
            definevalue(x.args[1], ToMyExpr(x.args[2]))
        elseif isFunctiondefinition(x)
            ...
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


function definevalue(x::Symbol, val, env::Env = Sheat)
    if x in env
        throw(AlreadyDefined(string(x)))
    else
        tp = (x, val)
        push!(env, tp)
    end
end
