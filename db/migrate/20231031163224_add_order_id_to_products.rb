class AddOrderIdToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :order, null: true, foreign_key: true
  end
end
