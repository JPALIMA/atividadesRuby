require 'prawn'
require 'prawn_charts'

data = [
  ['ID', 'Nome', 'Idade'],
  [1, 'João', 30],
  [2, 'Maria', 28],
  [3, 'Pedro', 35]
]

Prawn::Document.generate('relatorio.pdf') do
  text 'Relatório de Dados', align: :center, size: 18, style: :bold
  move_down 20

  table(data, header: true, width: bounds.width) do |t|
    t.cells.borders = [:bottom]
  end

  move_down 20

  chart_data = { 'João' => 30, 'Maria' => 28, 'Pedro' => 35 }
  chart = PrawnCharts::Builder.build do |pdf, options|
    bar_chart pdf, chart_data, options
  end

  bounding_box([0, cursor], width: bounds.width) do
    chart.render(self)
  end
end
