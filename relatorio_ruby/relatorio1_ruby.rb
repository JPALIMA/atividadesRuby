require 'prawn'
require 'prawn/table'

#Crie uma instância do Prawn::Document
pdf = Prawn::Document.new

#Defina os dados da tabela
table_data = [
  ['Cabeçalho 1', 'Cabeçalho 2', 'Cabeçalho 3'],
  ['Dado 1', 'Dado 2', 'Dado 3'],
  ['Dado 4', 'Dado 5', 'Dado 6']
]

#Crie a tabela usando a gem prawn-table
pdf.table(table_data, header: true, width: pdf.bounds.width) do |t|
  t.cells.borders = [:bottom]
end

# Salve o documento em um arquivo PDF

  pdf.render_file('relatorio.pdf')
