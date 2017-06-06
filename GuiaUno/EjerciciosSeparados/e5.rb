def empieza_con_r(list)
  respuesta = 0
  list.each do |x|
    if x[0] != 'r'
      respuesta = false
    end
  end
  if respuesta == false
    print list
    puts "No todos empiezan con R"
  else
    print list
    puts "Todos empiezan con R"
  end
end

list1 = ['rambo', 'ruido', 'ruby']
list2 = ['razon', 'sazon', 'calzon']
print "Elija lista (1 o 2): "
opcion = gets.chomp
if opcion == "1"
  list = list1
else
  if opcion == "2"
    list = list2
  end
end
empieza_con_r(list)
