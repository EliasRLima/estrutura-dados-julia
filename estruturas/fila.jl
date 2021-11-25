include("../classes/nodo.jl")

abstract type Fila end

mutable struct tp_Fila <: Fila
   elemento::No
end

tp_Fila(p::Any) = tp_Fila(No(p::Any))
tp_Fila(n::Nothing) = tp_Fila(No(n::Nothing))
zerada() = tp_Fila(Nothing())

function criarFila(f::tp_Fila,p::Any)
   criarNo(n,p)
   f.elemento = n
end

function removerDaFila(f::tp_Fila) 
     elem_1 = f.elemento
     elem_2 = getProximo(elem_1)
     if elem_2 == Nothing()
       f = zerada()
       println("Fila limpa")
     else   
        f.elemento = elem_2
     end
     return elem_1 #retorna o elemento removido
end

function  adicionarNaFila(f::tp_Fila,p::Any)
    
    if f == Nothing()
        f = tp_Fila(p)
        return
    end

    elem_1 = f.elemento
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

    if f == Nothing()
       println("A fila esta vazia.")
       return
    end

    println("Mostrar fila: ")
    elem_1 = f.elemento
    while elem_1 != Nothing()
        mostrarElemento(elem_1)
        elem_1 = getProximo(elem_1)
    end

end