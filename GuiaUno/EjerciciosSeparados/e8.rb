lista = []
for x in (0..9)
  numero = rand(1..100)
  lista << numero
end

#Opcion 1
mayor = 0
lista.each do |x|
  if x > mayor
    mayor = x
  end
end
puts mayor

#Opcion 2
puts lista.sort.reverse[0]
