include("../classes/nodo.jl")

abstract type Lista end

mutable struct  tp_lista <: Lista
    elemento::No
end

tp_Lista(l::Any) = tp_Lista(No(l::Any))
tp_Lista(l::Nothing) = tp_Lista(No(l::Nothing))

function criarLista(l::tp_Lista, e::Any)
    criarNo(n, e)
    l.elemento = n
end

function tamanhoLista(l::tp_Lista)
    if l == Nothing()
        return 1;
    end

    return 1 + tamanhoLista(getProximo(l.elemento))
end

function adicionarNaLista(l::tp_Lista, n::Any, idx::Int64)
    if idx > tamanhoLista(l) #adicionar no final
        elm = l.elemento
        for i in 2:(tamanhoLista(l)-1)
            elm = getProximo(elm)
        end
        adicionarProx(elm, n)
    else
        if idx <= 1 #adicionar no começo
           prox = l.elemento
           n.prox = prox
           l.elemento = n
        else #adicionar no meio
            elm = l.elemento
            for i in 2:idx
               elm = getProximo(elm) 
            end
            n.prox = elm
            adicionarProx(getAnterior(elm),n)
        end
    end

end

function removerDaLista(l::tp_Lista, idx::Int64)
    if idx > tamanhoLista(l) #remover do final
        elm = l.elemento
        for i in 2:(tamanhoLista(l)-2)
            elm = getProximo(elm)
        end
        elm.elemento.prox = Nothing()
    else
        if idx <= 1 #remover do começo
           l.elemento = getProximo(l.elemento) #sobrescrevendo o inicio
        else #remover do meio
            elm = l.elemento
            for i in 2:(idx-1)
               elm = getProximo(elm) 
            end
            adicionarProx(elm,getProximo(getProximo(elm))) #elm recebe como prox duas posicoes a frente
        end
    end

end

