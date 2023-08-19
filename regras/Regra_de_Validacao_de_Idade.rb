def validar_idade(idade)
     if idade >= 18
          puts "Pode entrar na festa!"
     else idade
          puts "Voce é menor de idade e nao pode entrar na festa"
     end
end


idade = 20
validar_idade(idade)
