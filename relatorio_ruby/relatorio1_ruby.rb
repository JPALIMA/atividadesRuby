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

  #Configuração para evitar o aviso sobre fontes internas
  Prawn::Fonts::AFM.hide_m17n_warning = true

  # Criação da tabela usando loops
  table(table_data, header: true, width: bounds.width) do |t|
    t.cells.style(align: :center, padding: 5)
    t.row(0).style(font_style: :bold, background_color: 'DDDDDD')

    #Renderização dos dados da tabela
    table_data[1..-1].each do |row|
      row.each { |cell| t.cell(cell.to_s) }
    end
  end

    # Outras partes do seu relatório
end
