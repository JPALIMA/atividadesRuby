require 'prawn'

Prawn::Document.generate('relatorio.pdf') do 
     image 'C:\\Users\\JOAO PEDRO\\Documents\\Atividades_basicas_ruby\\relatorio_ruby\\logo.png',width: 150,
     position: :center
     move_down 20

     text 'Relatório de Produtos', align: :center, size: 18, style: :bold
     move_down 20

     text 'A seguir, apresentamos alguns dos produtos mais vendidos:', style: :italic

     products = [
          { name: 'Produto A', price: '$10.00'},
          { name: 'Produto B', price: '$15.00'},
          { name: 'Produto C', price: '$20.00'}
     ]

     products.each do |product|
          text "#{product[:name]}: #{product[:price]}", size: 14, indent_paragraphs: 20
     end
end

