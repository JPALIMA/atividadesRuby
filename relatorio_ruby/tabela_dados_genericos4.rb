require 'prawn'

Prawn::Fonts::AFM.hide_m17n_warning = true

data = [
  ['ID', 'Nome', 'Idade'],
  [1, 'João', 30],
  [2, 'Maria', 28],
  [3, 'Pedro', 35]
]

Prawn::Document.generate('relatorio.pdf') do
  text 'Relatório de Dados', align: :center, size: 18, style: :bold
  move_down 20

  data.each do |row|
    row.each_with_index do |cell, index|
      bounding_box([index * 200, cursor], width: 200) do
        text cell.to_s
      end
    end
    move_down 20
  end
end
