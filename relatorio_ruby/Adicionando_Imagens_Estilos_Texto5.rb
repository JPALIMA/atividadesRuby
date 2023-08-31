require 'prawn'

Prawn::Fonts::AFM.hide_m17n_warning = true

prawn::Document.generate('relatotio.pdf') do
     image 'C:\\User\\JOAO PEDRO\\Documents\\Atividades_basicas_ruby\\relatorio_ruby\\logo.png', widht: 150,
     position: :center
     move_down 20

     text 'Relatorio de Produtos', aligh: :center, size: 18, style: :intalic

     produtos = [
          { name: 'Produto A', price: '$10.00'},
          { name: 'Produto B', price: '$15.00'},
          { name: 'Produto C', price: '$20.00'}
     ]
end

     produtos.each do |produto|
          text "#{produto[:name]}: #{produto[:price]}", size: 14, indent_paragrahs 20
     end
[end]