class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
  end
  def new
    @truck = Truck.new
  end
  def edit
    @truck = Truck.find params[:id]
  end
  def Create
    @truck = Truck.new
    @truck.brand = params[:truck][:brand]
    @truck.year = params[:truck][:year]
    @truck.specs = params[:truck][:specs]
    @truck.avaible_days = params[:truck][:avaible_days]
    @truck.cost_x_km = params[:truck][:cost_x_km]

    if @truck.save
      redirect_to trucks_path
    else
      render :new
  end

  def update
    @truck = Truck.find params[:id]
    @truck.brand = params[:truck][:brand]
    @truck.year = params[:truck][:year]
    @truck.specs = params[:truck][:specs]
    @truck.avaible_days = params[:truck][:avaible_days]
    @truck.cost_x_km = params[:truck][:cost_x_km]

    if @truck.save
      redirect_to trucks_path
    else
      render :edit
    end
  end
end
