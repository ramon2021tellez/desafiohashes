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
#print ventas.each_slice(3){ |a| print a}
quarters = {}
ventas.values.each_slice(3).each_with_index do |element , index|
quarters["Q#{index + 1}"] = element.sum
end 
print quarters