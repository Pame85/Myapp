class LineItem < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order
  belongs_to :cart

  def price
    product.price * quantity
  end
end
