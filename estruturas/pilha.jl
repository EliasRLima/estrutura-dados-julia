include("../classes/nodo.jl")

abstract type Pilha end

mutable struct tp_Pilha <: Pilha
    elemento::No
end

primeiro(p::tp_Pilha) = p.elemento
tp_Pilha(p::Any) = tp_Pilha(No(p::Any))
tp_Pilha(p::Nothing) = tp_Pilha(No(p::Nothing))

function criarPilha(p::tp_Pilha, e::Any)
    criarNo(n, e)
    p.elemento = n
end

function  removerDaPilha(p::tp_Pilha)
    p.elemento = getProximo(p.elemento)
end

function adicionarNaPilha(p::tp_Pilha, e::Any)
    prox = p.elemento
    e.prox = prox
    p.elemento = e
end

function mostrarPilha(p::tp_Pilha)
    if p == Nothing()
        println("A pilha esta vazia.")
        return
    end

    println("Mostrar pilha: ")
    elem_1 = primeiro(p)
    while elem_1 != Nothing()
       mostrarElemento(elem_1)
       elem_1 = getProximo(elem_1)
    end
end