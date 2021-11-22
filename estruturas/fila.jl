include("../classes/nodo.jl")

abstract type Fila end

struct tp_Fila <: Fila
   elemento::No
end

primeiro(f::tp_Fila) = f.elemento
tp_Fila(p::Any) = tp_Fila(No(p::Any))

function criarFila(f::tp_Fila,p::Any)
   criarNo(n,p)
   f.elemento = n
end

function removerDaFila(f::tp_Fila) 
     elem_1 = primeiro(f)
     elem_2 = getProximo(elem_1)
     f.elemento = elem_2
     return elem_1 #retorna o elemento removido
end

function  adicionarNaFila(f::tp_Fila,p::Any)
    
    elem_1 = primeiro(f)
    if elem_1 == Nothing() #se lista vazia
        f.elemento = No(p)
    else #senao ir ate final
        elem_2 = elem_1
        elem_3 = elem_1
        while elem_2 != Nothing()
            elem_3 = elem_2
            elem_2 = getProximo(elem_2)
        end
        adicionarProx(elem_3,p)
    end

end

function mostrarFila(f::Fila)
    elem_1 = primeiro(f)
    while elem_1 != Nothing()
        mostrarElemento(elem_1)
        elem_1 = getProximo(elem_1)
    end

end