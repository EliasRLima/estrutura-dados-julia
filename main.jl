include("classes/pessoa.jl")
include("estruturas/fila.jl")
include("classes/nodo.jl")


elias =  tp_Pessoa("Elias Lima", 21, "XXX.XXX.XXX-XX")
italo = tp_Pessoa("Italo Auau",22,"YYY.YYY.YYY-YY")

#mostrar as pessoas
#bio(elias)
#bio(italo)

fila = tp_Fila(elias)
#mostrarElemento(primeiro(fila))
mostrarFila(fila)

adicionarNaFila(fila,italo)
mostrarFila(fila)


