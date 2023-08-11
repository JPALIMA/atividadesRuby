require 'prawn'
require 'prawn/table'

data = [
    [ 'ID', 'Nome', 'Idade'],
    [1, 'João', 30],
    [2, 'Maria', 28],
    [3, 'Pedro', 35]
]

Prawn::Document.generate('relatorio.pdf') do
    text 'Relatorio de Dados', align: :center, size: 18, style: :bold
    move_down 20

    table(data, header: true, width: bounds.width) do |t|
        t.cells.borders = [:bottom]
    end

    move_down 20
    chart bounding_box([0, cursor], width: bounds.width) do
        data = { 'João' => 30, 'Maria' => 28, 'Pedro' => 35 }
        bar_chart data, height: 200, width: 300, bar_colors: ['0088cc', '00cc88', 'cc8800']
    end
end
