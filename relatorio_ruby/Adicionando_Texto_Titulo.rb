require 'prawn'

Prawn::Document.generate('relatorio.pdf') do 
    text 'Relatório Gerado em Ruby com Prawn', align: :center, size: 18, style: :bold
    move_down 20
    text 'Exemplo de relatório usando a gem Prawn em Ruby.'
end

