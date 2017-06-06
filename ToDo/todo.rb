require 'rubygems'
require 'sinatra'
require 'slim'
require 'data_mapper'

DataMapper.setup(:default, 'sqlite:db/todo.db')
DataMapper::Logger.new($stdout, :debug)

class Tarea
  include DataMapper::Resource
  property :id, Serial
  property :titulo, String
  property :cuerpo, Text
  property :fechavencimiento, Date
  property :completada, Boolean
  property :fechamodificacion, Date
end
Tarea.auto_upgrade!

get '/' do
	@tareas = Tarea.all
  slim :index
end

get '/:id' do
	@tarea = Tarea.get(params[:id])
  @tarea.destroy
  redirect "/"
end

get '/editar/:id' do
	@tarea = Tarea.get(params[:id])
  slim :editar
end

post '/' do
	tarea = Tarea.new(:titulo => params[:titulo], :cuerpo => params[:cuerpo], :fechavencimiento => params[:fechavencimiento], :completada => false, :fechamodificacion => Time.now)
	if tarea.save
		redirect "/"
	else
		p "A ocurrido un error al querer guardar tarea"
	end
end

post '/editar/:id' do
	@tarea = Tarea.get(params[:id])
	@tarea.titulo = params[:titulo]
	@tarea.cuerpo = params[:cuerpo]
	@tarea.fechavencimiento = params[:fechavencimiento]
	@tarea.save
	redirect "/"
end
