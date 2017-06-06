require 'sinatra'
require 'slim'

get '/' do
  slim :index
end

post '/' do
  @deduc = []
  @etiq = []
  @cant = []
  @haber = []


  @sueldo = (p params[:sueldo]).to_f
  @haber.push(@sueldo)
  @deduc.push(0)
  @cant.push("100")
  @etiq.push("Sueldo Básico")

  @anios = (p params[:anios]).to_i
  @hijos = (p params[:hijos]).to_i

  @antiguedad = ((@sueldo.to_i * 0.02) * @anios.to_i).to_f
  if @antiguedad != 0
    @etiq.push("Antiguedad")
    @haber.push(@antiguedad)
    @deduc.push(0)
    @cant.push("2.00")
  end
  if @hijos.to_i != 0
    @etiq.push("ANSES SUAF")
    @asignacion = (@hijos.to_i * 450).to_f
    @haber.push(@asignacion)
    @cant.push("450")
    @deduc.push(0)
  end

  @jubilacion = (@sueldo.to_f * 0.11).to_f
  @etiq.push("Jubilación")
  @deduc.push(@jubilacion)
  @haber.push(0)
  @cant.push("11.00")

  @ley = (@sueldo * 0.03).to_f
  @etiq.push("Ley 19.032")
  @deduc.push(@ley)
  @haber.push(0)
  @cant.push("3.00")

  @obra = (@sueldo * 0.0255).to_f
  @etiq.push("OSDE")
  @deduc.push(@obra)
  @haber.push(0)
  @cant.push("2.55")

  @amssal = (@sueldo * 0.0045).to_f
  @etiq.push("AMSSAL")
  @deduc.push(@amssal)
  @haber.push(0)
  @cant.push("0.45")

  @total = 0
  #Ingresos
  @haber.each do |list|
    @total = @total + list.to_f
  end

  if @sueldo.to_f > 35000
    @etiq.push("Impuesto a Ganancias")
    @ganancias = (@total * 0.35).to_f
    @deduc.push(@ganancias)
    @haber.push(0)
    @cant.push("35.00")
  end
  #Egresos
  @deduc.each do |lista|
    @total = @total - lista.to_f
  end

  slim :index
end