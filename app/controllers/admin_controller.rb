class AdminController < ApplicationController
  def index
  	p Order.all
  	@orders = Order.all
  end

  def confirm
  	p 'confirm'
  	p params[:confirm_order_id]
  	order = Order.find_by(id: params[:confirm_order_id])
  	order.status = 'Confirmed'
  	order.save
  	redirect_to '/admin'
  end

  def ship
  	p 'ship'
  	p params[:ship_order_id]
  	order = Order.find_by(id: params[:ship_order_id])
  	order.status = 'Shipped'
  	order.save
  	redirect_to '/admin'
  end
end
