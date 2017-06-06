lista = []
num_secreto = rand(1..10)
print "Elija un numero del 1 al 10: "
num_elegido = ""
while num_elegido.to_i != num_secreto.to_i
  print "Elija un numero del 1 al 10: "
  num_elegido = gets.chomp
  if not lista.include? num_elegido
    lista << num_elegido
  end
  if num_elegido.to_i < num_secreto
    puts "El numero secreto es mayor"
  else
    if num_elegido.to_i > num_secreto
      puts "El numero secreto es menor"
    else num_elegido == num_secreto
    puts "El numero elegido es el correcto"
    puts "Cantidad de intentos realizados: #{lista.size()}"
  end
  end
end
