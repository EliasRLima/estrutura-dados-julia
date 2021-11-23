include("pessoa.jl")
#using Setfield

abstract type Nodo end

mutable struct No <: Nodo
     pessoa::Union{tp_Pessoa,Nothing}
     ante::Union{No,Nothing}
     prox::Union{No,Nothing}
end

No(p::tp_Pessoa) = No(p, Nothing(), Nothing())
No(n::Nothing) = No(Nothing(), Nothing(), Nothing())

getAnterior(n::No) = n.ante
getProximo(n::No) = n.prox
getPessoa(n::No) = n.pessoa

function criarElemento(n::No,p::tp_Pessoa)
    n.pessoa = p
    n.ante = nothing
    n.prox = nothing
end

function adicionarProx(n::No, p::tp_Pessoa)
    novo = No(p)
    novo.ante = n
    n.prox = novo#@set novo
    return true
end

function mostrarElemento(n::No)
    bio(getPessoa(n))
end
