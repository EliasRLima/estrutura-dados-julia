include("../classes/nodo.jl")

abstract type Lista end

mutable struct  tp_lista <: Lista
    elemento::No
end