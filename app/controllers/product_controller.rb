class ProductController < ApplicationController
  def index
  end

  def add_to_cart
    cart << params[:product]
    render :index
  end
end
