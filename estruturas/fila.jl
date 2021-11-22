include("../classes/nodo.jl")

abstract type Fila end

struct tp_Fila <: Fila
   elemento::No
end

primeiro(f::tp_Fila) = f.elemento

function removerDaFila(f::tp_Fila) 
     elem_1 = primeiro(f)
     elem_2 = getProximo(elem_1)
     f.elemento = elem_2
     return elem_1 #retorna o elemento removido
end

function  adicionarNaFila(f::tp_Fila,p::Any)
    
    elem_1 = primeiro(f)
    if elem_1 == Some(nothing) #se lista vazia
        criarNo(f.elemento, p)
    else #senao ir ate final
        elem_2 = elem_1;
        while getProximo(elem_2) != Some(nothing)
            elem_2 = getProximo(elem_2)
        end
        adicionarProx(elem_2,p)
    end

end