include("../classes/nodo.jl")

abstract type Arvore end

mutable struct tp_Arvore <: Arvore
    elemento::No
    key::Int
    esquerda::Union{tp_Arvore,Nothing}
    direita::Union{tp_Arvore,Nothing}
end

tp_Arvore(e::No,key::Int) = tp_Arvore(e,key, Nothing(), Nothing())

function Base.push!(node::tp_Arvore, elemento, key)
    if key < node.key
        if node.esquerda.isnull
            node.esquerda = tp_Arvore(elemento,key)
        else
            push!(node.esquerda.value, elemento,key)
        end
    elseif key > node.key
        if node.direita.isnull
            node.direita = tp_Arvore(elemento,key)
        else
            push!(node.direita.value, elemento,key)
        end
    end
end
