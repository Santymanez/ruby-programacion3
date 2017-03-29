def e1
  puts "Hola Mundo"
end

def e2
  print "Ingrese Nombre: "
  nombre=gets
  puts "Hola " + nombre
end

def e3
  print "Ingrese Nombre: "
  nombre = gets.chomp
  if nombre == 'marcelo' || nombre == 'claudia'
    puts "Hola #{nombre}"
  else
    puts "Hola"
  end
end

def e4
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
end

def e5
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
end

def e6
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
end

def e7
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
end

def e8
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
end

def e9
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
end

def menu
  for x in (1..9)
    puts "E#{x} - #{x}"
  end
  puts "0 - Salir"
  print "Ingrese numero de ejercicio a ejecutar: "
  ejercicio = gets.chomp
  case ejercicio.to_s
  when "1"
      e1
    when "2"
      e2
    when "3"
      e3
    when "4"
      e4
    when "5"
      e5
    when "6"
      e6
    when "7"
      e7
    when "8"
      e8
    when "9"
      e9
    when "0"
      :quit
  end
end

menu
