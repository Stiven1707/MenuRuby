require_relative "Menu"

class MenuPrincipal < Menu
    def initialize()
        super
    end
    
    def Configurar()
        @atrItems.clear
        @atrItems.push("    MENÚ PRINCIPAL   ")
        @atrItems.push("1")
        @atrItems.push("2")
        @atrItems.push("3")
        @atrItems.push("4")
        @atrItems.push("Salir")
    end
    def Procesar
        case atrOpccionElegida
            when 1 then
                Consola.escribirEncabezado("Op1")
            when 2 then
                Consola.escribirEncabezado("Op2")
            when 3 then
                Consola.escribirEncabezado("Op3")
            when 4 then
                Consola.escribirEncabezado("Op4")
            when 5
                Consola.escribirEncabezado("Salio de la Aplicacion...")
            else
                Consola.escribirEncabezado("El Valor de la opcion indicada no existe...")
                        
        end

        if atrOpccionElegida != atrItems.size()-1
            Consola.pausa
        end
    end
    

end