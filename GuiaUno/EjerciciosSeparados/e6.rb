def empieza_con_ba(list)
  respuesta = ""
  lista_ba = []
  list.each do |x|
    if x[0..1] == 'ba'
      lista_ba << x
    end
  end
  puts lista_ba[0]
end

list1 = ['anana', 'banana', 'manzana']
list2 = ['anana', 'banana', 'balanza']
print "Elija lista (1 o 2): "
opcion = gets.chomp
if opcion == "1"
  list = list1
else
  if opcion == "2"
    list = list2
  end
end
empieza_con_ba(list)
