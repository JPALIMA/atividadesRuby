class Automovel

    def self.tipo_cambio
        puts "Manual"
    end

    def acelera
        veridica_combustivel
        puts "Acelerando automóvel..."
    end

    private
    def verifica_combustivel
        puts "verificando combustivel"
    end
end
