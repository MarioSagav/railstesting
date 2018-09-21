class EmpresasController < ApplicationController
  def index
    @empresas = Empresa.all
  end
  
  def new
    @empresa = Empresa.new
  end

  def edit 
    @empresa = Empresa.find params[:id]
  end

  def create
    @empresa = Empresa.new
    @empresa.razonSocial = params[:empresa][:razonSocial]
    @empresa.nit = params[:empresa][:nit]
    @empresa.direccion = params[:empresa][:direccion]
    @empresa.telefono = params[:empresa][:telefono]
    @empresa.fax = params[:empresa][:fax]
    @empresa.sitioWeb = params[:empresa][:sitioWeb]

    if @empresa.save
      redirect_to empresas_path
    else 
      render :new
    end
  end

  def update
    @empresa = Empresa.find params[:id]
    @empresa.razonSocial = params[:empresa][:razonSocial]
    @empresa.nit = params[:empresa][:nit]
    @empresa.direccion = params[:empresa][:direccion]
    @empresa.telefono = params[:empresa][:telefono]
    @empresa.fax = params[:empresa][:fax]
    @empresa.sitioWeb = params[:empresa][:sitioWeb]

    if @empresa.save
      redirect_to empresas_path
    else 
      render :edit
    end
  end
end
