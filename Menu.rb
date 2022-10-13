require_relative "Consola"
class Menu
    include Comparable
    attr_accessor :atrOpccionElegida
    attr_accessor :atrOpccionSalir
    attr_accessor :atrItems
    def initialize()
        @atrOpccionElegida = -1
        @atrOpccionSalir = -1
        @atrItems = Array.new
        Iterar()
    end
    def imprimir()
        
        Consola.escribirEncabezado(atrItems[0]);
        for varIndice in 1..(atrItems.size()-1) do
            Consola.escribirConSalto(varIndice.to_s+"."+atrItems[varIndice])
        end
        Consola.escribirConSalto("****************************************************************************************************")
    end
    def Iterar()
        Configurar()
        @atrOpccionSalir = atrItems.size()-1
        loop do
            imprimir()
            @atrOpccionElegida = Consola.leerCon("Ingrese un valor Entre [1.." + atrOpccionSalir.to_s + "] para <Opcion>:")
            Procesar()
            Configurar()
            @atrOpccionSalir = atrItems.size()-1
            if atrOpccionElegida == atrOpccionSalir
                break
            end
        end
    end
    
    
    def Configurar()
        
    end
    def Procesar()
        
    end
    
end  