class TightclubController < ApplicationController
	before_action :authenticate_user!


  def index
  	p Order.all
  end
end
