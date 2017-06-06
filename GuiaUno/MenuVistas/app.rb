require 'sinatra'
require 'slim'

get '/' do
  @anio = 2017
  slim :index
end

get '/contacto' do
  slim :contacto
end

post '/contacto' do
  p params[:nombre]
end

get '/ej1' do
  slim :ej1
end

get '/ej2' do
	slim :ej2
end

post '/ej2' do
	slim :resp2
end

get '/ej3' do
	slim :ej3
end

post '/ej3' do
	slim :resp3
end

get '/ej4' do
  slim :ej4
end

post '/ej4' do
	slim :resp4
end

get '/ej5' do
  slim :ej5
end

post '/ej5' do
	slim :resp5
end

get '/ej6' do
	slim :ej6
end

post '/ej6' do
	slim :resp6
end

get '/ej7' do
	slim :ej7
end

post '/ej7' do
	slim :resp7
end

get '/ej8' do
  slim :ej8
end

get '/ej9' do
  slim :ej9
end

post '/ej9' do
	slim :resp9
end