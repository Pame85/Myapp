class Cart < ApplicationRecord
  belongs_to :user
  has_many :line_items

  def total_price
    line_items.sum(:price)
  end
end
