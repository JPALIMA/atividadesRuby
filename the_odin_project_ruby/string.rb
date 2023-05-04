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

#Commom Sring methods
#capitalize

"hello". capitalize #=> "hello"

#include?

"hello".include?("to") #=> true
"hello".include?("z") #=> false

#upcase

"hello". downcase #=> "hello"

#empety?

"empty"? #=> 5

#reverse

"hello".reverse #=> "olleh"

#split

"hello world".split #=> ["hello", "world"]

"hello world".split("") #=> ["h","e", "1", "l", "o]

#strip

"hello, world ".strip #=> "hello, world"

"he77o.sub("7", "1") #=> "hel7o"

"he77o".gsub("7", "1") #=> hello"

"hello".insert(-1, " dude") #=> "hello dude"
"hello.world"delete("1") #=> "heo word"
"!".prepend("hello, ",  " world") #=> "hello, world!"

#Covertendo outros objetos em cadeias de caracteres

5.to_s #=> "5"
nil.to_s #=> ""
:symbol.to_s #=> "symbol"

#Simbolos

my_symbol

#string" == "string" #=> true
"string".object_id == "string".object_id #=> false
:symbol.object_id == :symbol.object_id #=> true
