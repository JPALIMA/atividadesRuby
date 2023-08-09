require 'prawn'

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

  #Configuração

  # Criação da tabela usando loops
  table_data.each_with_index do |row, row_index|
    row.each_with_index do |cell, col_index|
      if row_index == 0
        text cell, style: :bold, background_color: 'DDDDDD', align: :center
      else
        text cell, align: :center
      end
    end
    move_down 10
  end

  # Outras partes do seu relatório
end
