require 'prawn'

Prawn::Document.generate('relatorio.pdf') do 
     image 'C:\\Users\\JOAO PEDRO\\Documents\\Atividade_basicas_ruby\\relatorio_ruby\\logo.png', width: 150,
     position: :center
     move_down 20

     text 'Relatorio de Produtos', align: :center, size: 18, style: bold
     move_down 20

     text 'A seguir, apresentamos alguns produtos mais vendidos:', style: :italic

     produtos = [
          { name: 'Produto A', price: '$10.00'},
          { name: 'Produto B', price: '$15.00'},
          { name: 'Produto C', price: '$20.00'}
     ]

     produtos.each do |produto|
          text "#{produto[:name]}: #{produto[:price]}", size: 14, indent_paragraphs: 20
     end
end