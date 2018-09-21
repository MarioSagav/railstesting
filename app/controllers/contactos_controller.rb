class ContactosController < ApplicationController
	def index
		@contactos = Contacto.all
	end

	def new
		@contacto = Contacto.new
	end

	def edit
		@contacto = Contacto.find params[:id]
	end

	def create
		@contacto = Contacto.new
		@contacto.nombre = params[:contacto][:nombre]
		@contacto.apellido = params[:contacto][:apellido]
		@contacto.telefono = params[:contacto][:telefono]
		@contacto.correoElectronico = params[:contacto][:correoElectronico]
		@contacto.direccion = params[:contacto][:direccion]

		if @contacto.save
      flash[:notice] = "contacto creado "+ @contacto.nombre
			redirect_to contactos_path
		else
			render :new
		end
	end

	def update
		@contacto = Contacto.find params[:id]
		@contacto.nombre = params[:contacto][:nombre]
		@contacto.apellido = params[:contacto][:apellido]
		@contacto.telefono = params[:contacto][:telefono]
		@contacto.correoElectronico = params[:contacto][:correoElectronico]
		@contacto.direccion = params[:contacto][:direccion]

		if @contacto.save
      flash[:notice] = "contacto actualizado " + @contacto.nombre
			redirect_to contactos_path
		else
			render :edit
		end
	end

end
