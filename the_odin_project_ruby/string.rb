#Concatenação

# with the plus operator:

"welcome " + "to " + "Study!" #=> "welcome to Odin!"

# with the shovel operator:
"welcome " << "to " << "Odin!" #=> "Welcome to Odin!"

# With the concat method:

#"welcome".concat ("to ").concat("Study!") #=> "Welcome to Study"

#Subsequências

"hello" [0] #=> "h"
"hello"[0..1] #=> "he"
"hello"´[0,4] #=> "hell"
"hello"[-1] #=> "o"

#Escape Characters

\\ #=> Need a backslash in you string
\b #=> Backspace
\r #=> Carriage return, for those of you that love tipewriters
\n #=> Newline. you'll likely use this one the most.
\s #=> Space
\t #=> Tab
\" #=> Double quotation mark
\' #=> Single quotation mark

name = "odin"

puts "Hello, #{name}"  #=> "hello, Odin"
puts 'hello, #{name}' #=> "Hello, #{name}"

