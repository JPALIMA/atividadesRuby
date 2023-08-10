require 'prawn'
require 'prawn/table'

# Dados de exemplo para a tabela
table_data = [
  ['Nome', 'Idade', 'Cidade'],
  ['João', 30, 'São Paulo'],
  ['Maria', 25, 'Rio de Janeiro'],
  ['Pedro', 28, 'Belo Horizonte']
]

# Criação do PDF
Prawn::Document.generate('relatorio.pdf') do
  font_size 12

  # Criação da tabela
  table table_data, header: true, width: bounds.width do |t|
    t.row(0).style(background_color: 'cccccc', font_style: :bold)
    t.row_colors = ['eeeeee', 'ffffff']
    t.header = true
  end
end
