def calcular_desconto(total_compra, codigo_desconto)
     if codigo_desconto == "DESCONTO10"
          desconto = total_compra * 0.1
     elsif codigo_desconto == "FRETEGRATIS"
          desconto = total_compra
     else
          desconto = 0
     end

     total_com_desconto = total_compra - desconto
     puts "Total a pagar: R$#{total_com_desconto}"
end

total_compra = 150
codigo_desconto = "DESCONTO10"
calcular_desconto(total_compra, codigo_desconto)