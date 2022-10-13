class Consola
    include Comparable
    #metodos de clase, se pueden usar a traves del nombre de la clase 
    def self.pausa
        escribir("\n****************************************************************************************************\n");
        escribir("Presione cualquier tecla para Continuar....");
        leer
    end
    def self.escribir(etiqueta="")
        print etiqueta
    end
    def self.escribirConSalto(etiqueta)
        puts etiqueta
    end
    def self.escribirEncabezado(etiqueta)
        
        escribirConSalto("****************************************************************************************************")
        escribirConSalto(etiqueta)
        escribirConSalto("****************************************************************************************************")
    end
    def self.leer(etiqueta="")
        escribir(etiqueta)
        gets.chomp
    end
    def self.leerCon(etiqueta)
        loop do
            return Integer(leer(etiqueta) || '')
            rescue ArgumentError => e
            print "Error :",e,"\n"
        end
    end
    def self.leerValor(desde,hasta,etiqueta)
        num = leerCon(etiqueta)
        if num < desde || num > hasta
            escribir("Error, solo se admiten valores entre [" + desde.to_s + ".." + hasta.to_s + "]...\n")
        else
            num
        end
    end
    
    #metodos de instacia, solo disponibles
    #a traves instancias
    def number_or_nil(string)
        Integer(string || '')
      rescue ArgumentError
        nil
    end
end
