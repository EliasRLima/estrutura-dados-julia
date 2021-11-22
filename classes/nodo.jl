include("pessoa.jl")
using Setfield

abstract type Nodo end

struct No <: Nodo
     pessoa::tp_Pessoa
     ante::Union{No,Nothing}
     prox::Union{No,Nothing}
end;

No(p::tp_Pessoa) = No(p, Nothing(), Nothing())

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
    novo.ante = @set n
    n.prox = @set novo
    return true
end

function mostrarElemento(n::No)
    bio(getPessoa(n))
end
