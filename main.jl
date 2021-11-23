include("classes/pessoa.jl")
include("estruturas/fila.jl")
include("classes/nodo.jl")


elias =  tp_Pessoa("Elias Lima", 21, "XXX.XXX.XXX-XX")
italo = tp_Pessoa("Italo Auau",22,"YYY.YYY.YYY-YY")
je = tp_Pessoa("Je", 35, "NNN.NNN.NNN-NN")
higo = tp_Pessoa("Higo", 28, "KKK.KKK.KKK-KK")

#mostrar as pessoas
#bio(elias)
#bio(italo)

fila = tp_Fila(elias)
#mostrarElemento(primeiro(fila))
adicionarNaFila(fila,italo)
adicionarNaFila(fila, higo)
adicionarNaFila(fila, je)

mostrarFila(fila)

removerDaFila(fila)
mostrarFila(fila)

removerDaFila(fila)
removerDaFila(fila)
mostrarFila(fila)

removerDaFila(fila)
mostrarFila(fila)

removerDaFila(fila)
mostrarFila(fila)
