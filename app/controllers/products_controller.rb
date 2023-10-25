class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]
  
    def index
      @products = Product.all
    end
  
    def new
      @product = Product.new
    end

    def create
      @product = current_user.products.new(product_params)
      if @product.save
        redirect_to products_path, notice: 'Product was successfully created.'
      else
        binding.break
        flash[:alert] = 'Product could not be saved.'
        render :new
      end
    end

    def show
      @product = Product.find(params[:id])
    end
    
    def edit
    end
  
    def update
      @product.update(product_params)
      if @product.save
        redirect_to product_path(@product)
      else
        render :edit
      end
    end

    def destroy
      @product.destroy
      redirect_to root_path, notice: 'Product was successfully deleted.'
    end

    private
  
    def set_product
      @product = Product.find(params[:id])
    end
  
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
end
  