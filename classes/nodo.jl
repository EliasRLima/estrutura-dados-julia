include("pessoa.jl")

abstract type Nodo end

struct No <: Nodo
     pessoa::tp_Pessoa
     ante::No
     prox::No
end;

getAnterior(n::No) = n.ante
getProximo(n::No) = n.prox
getPessoa(n::No) = n.pessoa

function criarNo(n::No,p::tp_Pessoa)
    n.pessoa = p
    n.ante = nothing
    n.prox = nothing
    return true
end

function adicionarProx(n::No, p::tp_Pessoa)
    criarNo(novo,p)
    novo.ante = n
    n.prox = novo
    return true
end

    