class OrdersController < ApplicationController
	def index
		@orders = Order.all
	end

	def new
		#asi se crea orders
		@order = Order.new
		
	end

	def edit
		@order = Order.find params[:id]
	end
	def create
		#aqui los params viajan por el order
		puts "\n parametros: #{params[:order].inspect}"
		#raise "parametros"
		@order = Order.new
		@order.customer_id = params[:order][:customer_id]
		@order.truck_id = params[:order][:truck_id]
		@order.date = params[:order][:date]
		@order.distance = params[:order][:distance] 
		if @order.save
			flash[:notice] = "orden creada"
			redirect_to orders_path
		else
			render :new
		end
	end

	def update
		@order = Order.find params[:id]
		@order.date = params[:order][:date]
		@order.distance = params[:order][:distance]
		if @order.save
			flash[:notice] = "orden actualizada"
			redirect_to orders_path
		else
			render :edit
		end
	end
end
