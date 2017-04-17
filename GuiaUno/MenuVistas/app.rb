require 'sinatra'
require 'slim'

get '/' do
  @anio = 2017
  slim :index
end

get '/ej1' do
  slim :ej1
end

get '/ej2' do
	@nombre = 'marcelo'
	slim :ej2
end

get '/ej3' do
	@nombre = 'santy'
	slim :ej3
end

get '/ej4' do
  @numero = 1
  slim :ej4
end

get '/ej5' do
	@list1 = ['rambo', 'ruido', 'ruby']
	@list2 = ['razon', 'sazon', 'calzon']
	@list = @list2
  slim :ej5
end

get '/ej6' do
	@list1 = ['anana', 'banana', 'manzana']
    @list2 = ['anana', 'banana', 'balanza']
    @list = @list2
	slim :ej6
end

get '/ej7' do
	@numero = 25
	slim :ej7
end

get '/ej8' do
  slim :ej8
end

get '/ej9' do
  @num_elegido = 4
  slim :ej9
end
