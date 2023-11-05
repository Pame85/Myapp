class CartsController < ApplicationController
  def show
    @line_items = current_user.line_items
  end

  def create
    @product = Product.find(params[:product_id])
    @line_item = current_user.line_items.build(product: @product, quantity: 1)
      if @line_item.save
        redirect_to cart_path, notice: "Product added to cart successfully."
      else
        redirect_to product_path(@product), alert: "Failed to add product to cart."
      end
    end
  end