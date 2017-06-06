print "Ingrese un numero: "
numero = gets.chomp
cont = 1
suma= 1
suma.to_i
while cont != numero.to_i
  cont+=1
  suma = suma + cont
end
puts "El resultado es: #{suma}"
