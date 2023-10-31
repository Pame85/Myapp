class OrdersController < ApplicationController
    def create
        @order = Order.new(order_params)
        if @order.save
          @product = Product.find(params[:order][:product_id])
          @product.update(order_id: @order.id)
          flash[:success] = "Successed to place the order."
          redirect_to products_path
        else
          flash[:error] = "Failed to place the order."
          redirect_to root_path
        end
    end
  
    private
  
    def order_params
      params.require(:order).permit(:product_id)
    end
end