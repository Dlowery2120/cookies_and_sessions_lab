class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def add
                # Get the product from the path
        @product = Product.find(params[:id])

        # Load the cart from the session, or create a new empty cart.
        cart << @product.id

        
    end
end
