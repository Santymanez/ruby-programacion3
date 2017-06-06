print "Ingrese un numero: "
numero = gets.chomp
cont = 1
suma= 1
suma.to_i
if numero.to_i % 3 == 0 || numero.to_i % 5 == 0
  while cont != numero.to_i
    cont+=1
    suma = suma + cont
  end
  puts "El resultado es: #{suma}"
end
