class ProductsController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    def index
      @cart = cart
    end

    def add
      @product = params[:product]
      cart << @product
      render :index
    end
end
