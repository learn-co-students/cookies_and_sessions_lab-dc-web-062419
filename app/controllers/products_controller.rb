class ProductsController < ActionController::Base

    # before_action  :cart 
    
    def cart
        @cart = session[:cart] || []
     end
   


    def index
        if @cart 
            @cart
        end
    end
    
    def add
        # byebug
        @cart << "apples"
        render :index
    end


end