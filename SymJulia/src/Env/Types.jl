mutable struct Env
    def::Array{Tuple{Symbol, <:MyExpr}}
    function Env()
        return new([])
    end
end
