class OrdersController < ApplicationController
  def new
    @pre_order = PreOrder.new
  end

  def create
    @pre_order = PreOrder.new(pre_order_params)
    if @pre_order.save
      redirect_to order_path(@pre_order)
    else
      render :new
    end
  end

  def show
    @pre_order = PreOrder.find(params[:id])
  end

  private

  def pre_order_params
    params.require(:pre_order).permit(:name, :email, :product_id, :quantity)
  end
end