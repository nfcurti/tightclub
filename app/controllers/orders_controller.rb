class OrdersController < ApplicationController
  def create
  	p params
  	Order.create(client: params[:client_id], item: params[:prod], quantity: params[:q], status: params[:status])
  end

  def destroy
  end
end
