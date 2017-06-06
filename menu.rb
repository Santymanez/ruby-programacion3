require 'sinatra'

  get '/' do
    return 'Elegi url de ejercicio'
  end

  get '/1' do
    return "Hola Mundo"
  end

  get '/2/:nombre' do
    nombre = params[:nombre]
    return "Hola " + nombre
  end

  get '/3/:nombre' do
    nombre = params[:nombre]
    if nombre == 'marcelo' || nombre == 'claudia'
      return "Hola #{nombre}"
    else
      return "Hola"
    end
  end

  get '/4/:numero' do
    numero = params[:numero]
    cont = 1
    suma= 1
    suma.to_i
    while cont != numero.to_i
      cont+=1
      suma = suma + cont
    end
    return "El resultado es: #{suma}"
    end

  get '/5/:numero' do
    def empieza_con_r(list)
      respuesta = 0
      list.each do |x|
        if x[0] != 'r'
          respuesta = false
        end
      end
      if respuesta == false
        
        return "#{list} No todos empiezan con R"
      else
        
        return "#{list} Todos empiezan con R"
      end
    end

    list1 = ['rambo', 'ruido', 'ruby']
    list2 = ['razon', 'sazon', 'calzon']
    numero = params[:numero]
    if numero == "1"
      list = list1
    else
      if numero == "2"
        list = list2
      end
    end
    empieza_con_r(list)
  end

  get '/6/:numero' do
    def empieza_con_ba(list)
      respuesta = ""
      lista_ba = []
      list.each do |x|
        if x[0..1] == 'ba'
          lista_ba << x
        end
      end
      return lista_ba[0]
    end

    list1 = ['anana', 'banana', 'manzana']
    list2 = ['anana', 'banana', 'balanza']
    numero = params[:numero]
    if numero == "1"
      list = list1
    else
      if numero == "2"
        list = list2
      end
    end
    empieza_con_ba(list)
  end

  get '/7/:numero' do
    numero = params[:numero]
    cont = 1
    suma= 1
    suma.to_i
    if numero.to_i % 3 == 0 || numero.to_i % 5 == 0
      while cont != numero.to_i
        cont+=1
        suma = suma + cont
      end
      return "El resultado es: #{suma}"
    else
      return "El numero ingresado no es multiplo de 3 o 5"
    end
  end

  get '/8' do
    lista = []
    for x in (0..9)
      numero = rand(1..100)
      lista << numero
    end

    mayor = 0
    lista.each do |x|
      if x > mayor
        mayor = x
      end
    end
    return "#{mayor}"
  end

  get '/9/:numero' do
    lista = []
    num_secreto = rand(1..10)
    num_elegido = ""
    while num_elegido.to_i != num_secreto.to_i
      print "Elija un numero del 1 al 10: "
      num_elegido = params[:numero]
      if not lista.include? num_elegido
        lista << num_elegido
      end
      if num_elegido.to_i < num_secreto
        return "El numero secreto es mayor"
      else
        if num_elegido.to_i > num_secreto
          return "El numero secreto es menor"
        else num_elegido == num_secreto
        return "El numero elegido es el correcto <br> Cantidad de intentos realizados: #{lista.size()}"
      end
    end
  end
end