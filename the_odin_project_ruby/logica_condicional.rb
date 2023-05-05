if room_tidy == true 
    "I can play video games"
end

#declaração condicional basica

if atatement_to_be_evaluated == true 
    # do something awesome...
end
if 1<2
    puts "hot diggity, 1 is less than 2!"
end

#=> Hot diggity, 1 is less than 2!

puts "hot diggity damn, 1 is less than 2" if 1 < 2

#adicionando mais e elsif

if attack_by_land == true 

    puts "realise the goat"
end
    puts "release the shark"
end

if attack_by_land == true
    puts "release the goat"
elsif attack_by_sea == true 
    puts "release the shark"
else
    puts "release Kevin the octopus"
end
#lógica Booleana (igual)
5 == 5 #=> true
5 == 6 #=> false
#(não igual) retorna se os valores comparados não forem iguais.
5 != 7 #=> true
5 != 5 #=> false
#(maior que)
7 > 5 #=> true
5 > 7 #=> false
#(menor que)
5 < 7 #=> true
5 < 5 #=> false
#(maior ou igual a)
7 >= 7 #=> true
7 >= 5 #=> true
#(menor ou igual a)
5 <= 5 #=> true
5 <= 7 #=> true
# Verifica o tipo de valor e o valor real que ele contém.
5.eql?(5.0) #=> false; although they are the same value,
# one is an integer and the other is a float
5.eql?(5) #=> true
#Verifica se ambos os valores são exatamente o mesmo objeto na memória
a = 5
b = 5
a.equal?(b) #=> true
a = "hello"
b = "hello"
a.equal?(b) #=> false
#Operadores logicos
if 1 < 2 && 5 < 6
    puts "party at kevin's!"
end

#this can also be whitten as
if 1 < 2 and 5<6
    puts "Party at Kevin's!"
end
#avaliação de curto-circuito.
if  10 < 2 || 5 < 6 #=> although the left expression  is false,
    #there is a party at Kevin's bacause the right
    puts "Party at Kevin's!"
end

#This can also be writthen as
if 10 < 2 or 5 < 6
    puts "Party at Kevin's!"
end
#O operador inverte a lógica da expressão
if !false #=> true
if !(10 < 5) #=> true
#depoimentos dos casos
grade = 'F'
did_i_pass = case grade #=> create a variable 'did_i_pass' and
# assign the result of a call to case with the variable grade
# passed in 
when 'A' then "Hell yeah!"
when 'D' then "Dont't tell your mother."
else "'YOU SHALL NOT PASS!' -Gandalf"
end