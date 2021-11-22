abstract type Pessoa end

struct tp_Pessoa <: Pessoa
    nome::String
    idade::Int64
    cpf::String
end

nome(p::tp_Pessoa) = p.nome
idade(p::tp_Pessoa) = p.idade
cpf(p::tp_Pessoa) = p.cpf

bio(p::tp_Pessoa) = println("Meu nome é ", nome(p), ", tenho ", idade(p), " anos e sou inscrito no cpf: ", cpf(p),".")
