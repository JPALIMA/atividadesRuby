require 'prawn'
require 'prawn/table'

#Dados fictícios para o ralatório
table_data = [
  ['Nome', 'Idade', 'Cidade'],
  ['João', 30, 'São Paulo'],
  ['Maria', 25, 'Rio de Janeiro'],
  ['Pedro', 28, 'Belo Horizonte']
]

# Inicializar o documento PDF   
Prawn::Document.generate('relatorio.pdf') do
    font_size 12
    
    #Criar a tabela
    table(table_data, header: true, width: bounds.width) do
        row(0).style(background_color: 'ccccc', font_style: :bold)
        self.row_colors =  ['DDDDDD', 'FFFFFF']
        t.header = true
    end
end
