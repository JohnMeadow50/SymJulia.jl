mutable struct MyFunction <: MyExpr
    args::Array{Symbol, 1}
    expr::Expr
    aleas::Array{Expr}
    function MyFunction(args::Array{Symbol, 1}, expr::Expr)
        return new(args, expr, [])
    end
end
