class Pessoa
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def apresentar
        puts "Olá, meu nome é #{@nome} e tenho #{@idade} anos."
    end
end

pessoa = Pessoa.new("Maria", 30)
pessoa.apresentar