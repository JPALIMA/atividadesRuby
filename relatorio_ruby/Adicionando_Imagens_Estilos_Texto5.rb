require 'prawn'

Prawn::Fonts::AFM.hide_m17n_warning = true

prawn::Document.generate('relatorio.pdf') do
     image 'C:\\User\\JOAO PEDRO\\Documents\\Atividades_basicas_ruby\\relatorio_ruby\\logo.png', widht: 150,
     position: :center
     move_down 20

     text 'Relatorio de Produtos', aligh: :center, size: 18, style: :italic

     produtos = [
          { name: 'Produto A', price: '$10.00'},
          { name: 'Produto B', price: '$15.00'},
          { name: 'Produto C', price: '$20.00'}
     ]

     produtos.each do |produto|
          text "#{produto[:name]}: #{produto[:price]}", size: 14, indent_paragraphs: 20
     end
end