class AddPreOrderToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :pre_order, :boolean
  end
end
