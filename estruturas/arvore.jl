include("../classes/nodo.jl")

abstract type Arvore end

mutable struct tp_Arvore <: Arvore
    elemento::No
    key::Int
    left::Union{tp_Arvore,Nothing}
    right::Union{tp_Arvore,Nothing}
end

tp_Arvore(e::No,key::Int) = tp_Arvore(e,key, Nothing(), Nothing())

function Base.push!(node::tp_Arvore, elemento, key)
    if key < node.key
        if node.left.isnull
            node.left = tp_Arvore(elemento,key)
        else
            push!(node.left.value, elemento,key)
        end
    elseif key > node.key
        if node.right.isnull
            node.right = tp_Arvore(elemento,key)
        else
            push!(node.right.value, elemento,key)
        end
    end
end
