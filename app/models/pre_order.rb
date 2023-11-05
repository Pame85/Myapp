class PreOrder < ApplicationRecord
    self.table_name = "pre_orders"
    
    belongs_to :product

    validates :name, :email, :product_id, :quantity, presence: true
    validates :quantity, numericality: { greater_than: 0 }

    def total_price
        product.price * quantity
    end
    
    def generate_order_number
        "PO-#{SecureRandom.hex(4)}"
    end
  end