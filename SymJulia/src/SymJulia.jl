module SymJulia

import Base.convert
import Base.in
import Base.push!


abstract type MyExpr end

export Sheat, in, push!, Env, MyFunction, convert, ToMyExpr, 
    AbstractValue, Value, CombinedValue, FCall, @def

include("Env/main.jl")
include("Functions/main.jl")
include("Values/main.jl")
include("Env/main.jl")
include("Def.jl")

const Sheat = Env()

end # module
