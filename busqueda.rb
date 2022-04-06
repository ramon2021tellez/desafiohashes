ventas = {
    Enero: 15000,
    Febrero: 22000,
    Marzo: 12000,
    Abril: 17000,
    Mayo: 81000,
    Junio: 13000,
    Julio: 21000,
    Agosto: 41200,
    Septiembre: 25000,
    Octubre: 21500,
    Noviembre: 91000,
    Diciembre: 21000
}
# Crear un programa llamado busqueda.rb que pueda buscar a que mes pertenece una o más 
# cifras específicas.En caso de encontrarlo mostrar el mes, en caso de no encontrarlo mostrar el mensaje "no encontrado"

# ruby busqueda.rb 15000 31000 27000 ARGV
search_data = ARGV.map do |element|
    element.to_i
end
#=> [15000, 31000, 27000]

# sales_inverted = ventas.invert
#=> {15000=>:Enero, 22000=>:Febrero, 12000=>:Marzo, 17000=>:Abril, 81000=>:Mayo, 13000=>:Junio, 21000=>:Diciembre, 41200=>:Agosto, 25000=>:Septiembre, 21500=>:Octubre, 91000=>:Noviembre}
# search_data.each do |sale|
# #     #evaluar si la llave sale existe o es nil
# #     #si existe debe devolver el valor de la llave
#     if sales_inverted[sale]
#         puts sales_inverted[sale]
#     else
# #     #osea que si es nulo debe imprimir "no encontrado"
#         puts "no encontrado"
#     end
#     # puts (sales_inverted[sale]) ? (sales_inverted[sale]) : ("no encontrado")
# end
# puts sales_inverted[15000]
# puts sales_inverted[31000].nil?
# puts sales_inverted[27000].nil?

founded = false

search_data.each do |sale|
    ventas.each do |key, value|
        if sale == value
            puts key
            founded = true
        end
    end
    if founded == false
        puts "no encontrado"
    end
    founded = false
end