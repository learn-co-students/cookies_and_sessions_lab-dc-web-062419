class ProductsController < ActionController::Base

    before_action  :cart 
    
    def cart
        @cart = session[:cart] ||= []
     end
#this shouldn't be here (should inherit from applicationController) but it doesn;t see ApplicationController's   


    def index
        if @cart 
            @cart
        end
    end
    
    def add
        # byebug
        @cart << params[:product]
        render :index
    end


end