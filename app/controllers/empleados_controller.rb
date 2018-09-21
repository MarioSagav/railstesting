class EmpleadosController < ApplicationController
	def index
		@empleados = Empleado.all
	end

	def new
		@empleado = Empleado.new
	end

	def edit
		@empleado = Empleado.find params[:id]
	end

	def create
		@empleado = Empleado.new
		@empleado.nombre = params[:empleado][:nombre]
		@empleado.apellido = params[:empleado][:apellido]
		@empleado.genero = params[:empleado][:genero]
		@empleado.telefono = params[:empleado][:telefono]
		@empleado.numeroDocumento = params[:empleado][:numeroDocumento]

		if @empleado.save
			flash[:notice] = "empleado creado " +@empleado.nombre
			redirect_to empleados_path
		else
			render :new
		end
	end

	def update
		@empleado = Empleado.find params[:id]
		@empleado.nombre = params[:empleado][:nombre]
		@empleado.apellido = params[:empleado][:apellido]
		@empleado.genero = params[:empleado][:genero]
		@empleado.telefono = params[:empleado][:telefono]
		@empleado.numeroDocumento = params[:empleado][:numeroDocumento]
		if @empleado.save
			flash[:notice] = "empleado actualizado" + @empleado.nombre
			redirect_to empleados_path
		else
			render :new
		end
	end
end
