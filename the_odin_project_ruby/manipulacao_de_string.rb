nome = "João"
idade = 25

mensagem = "Olá, meu nome é #{nome} e tenho #{idade} anos."
puts mensagem

#Verificar se uma string contém outra

if mensagem.include?("nome")
    puts "A mensagem contém a palavra 'nome',"
end

#Converter string para maiúsculas
puts nome.upcase
